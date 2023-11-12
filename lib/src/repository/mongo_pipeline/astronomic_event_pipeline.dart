mixin AstronomicEventPipeline {
  static List<Map<String, Object>> findByTopic(
    String topic,
    int page,
    int size,
  ) {
    return [
      {
        r'$addFields': {
          'isTopicMatched': {
            r'$cond': {
              'if': {
                r'$not': {
                  r'$eq': [
                    r'$topics',
                    [topic],
                  ],
                },
              },
              'then': 0,
              'else': 1,
            },
          },
        },
      },
      {
        r'$sort': {
          'isTopicMatched': -1,
          'createdAt': 1,
        },
      },
      {
        r'$unset': 'isTopicMatched',
      },
      {
        r'$skip': (page - 1) * size,
      },
      {
        r'$limit': size,
      },
    ];
  }
}
