LuckyWeb::Server.configure do
  if Lucky::Env.production?
    settings.secret_key_base = secret_key_from_env
  else
    settings.secret_key_base = "mJ39TE1nQ6ylFD2kh5LQiUpBaiHHaz8br9tR81jO0Sg="
  end
end

private def secret_key_from_env
  ENV["SECRET_KEY_BASE"]? || raise_missing_secret_key_in_production
end

private def raise_missing_secret_key_in_production
  raise "Please set the SECRET_KEY_BASE environment variable. You can generate a secret key with 'lucky gen.secret_key'"
end
