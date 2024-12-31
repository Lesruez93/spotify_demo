
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

final $cacheOptions = CacheOptions(
  store: MemCacheStore(),
  policy: CachePolicy.forceCache,
  hitCacheOnErrorExcept: [401, 403],
  maxStale: const Duration(minutes: 1),
  priority: CachePriority.high,

);
