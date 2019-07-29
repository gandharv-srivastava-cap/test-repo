class Thrift < Formula
  desc "Framework for scalable cross-language services development"
  homepage "https://thrift.apache.org/"
  url "https://archive.apache.org/dist/thrift/0.8.0/thrift-0.8.0.tar.gz"
  sha256 "5e280097d88400f5e2db75595a04e1981538e48869cd6915bb9c4831605f0793"

  depends_on "bison" => :build
  depends_on "boost"
  depends_on "openssl"
  depends_on "libevent" => :optional
  depends_on "python@2" => :optional
  depends_on "ant" => :build
  depends_on :java => "1.8"


  def install
    system "./bootstrap.sh" unless build.stable?

    exclusions = ["--without-ruby", "--disable-tests", "--without-php_extension", "--without-perl", "--without-erlang", "--without-cpp"]

    #ENV.cxx11 if MacOS.version >= :mavericks && ENV.compiler == :clang

    # Don't install extensions to /usr:
    ENV["PY_PREFIX"] = prefix
    ENV["PHP_PREFIX"] = prefix
    ENV["JAVA_PREFIX"] = buildpath

    system "./configure", "--disable-debug",
                          "--prefix=#{prefix}",
                          "--libdir=#{lib}",
                          "--with-openssl=#{Formula["openssl"].opt_prefix}",
                          *exclusions
    ENV.deparallelize
    system "make"
    system "make", "install"

    # Even when given a prefix to use it creates /usr/local/lib inside
    # that dir & places the jars there, so we need to work around that.
    (pkgshare/"java").install Dir["usr/local/lib/*.jar"] if build.with? "java"
  end

  test do
    system "#{bin}/thrift", "--version"
  end
end
