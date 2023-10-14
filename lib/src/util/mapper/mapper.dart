typedef MapperFactory<FROM, TO> = Mapper<FROM, TO> Function();

mixin Mapper<FROM, TO> {
  TO call(FROM object);

  FROM from(TO object);
}
