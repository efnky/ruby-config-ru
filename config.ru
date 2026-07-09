app = ->(env) {
  body = env["PATH_INFO"] == "/up" ? "ok\n" : "ruby-config-ru up\n"
  [200, { "content-type" => "text/plain" }, [body]]
}
run app
