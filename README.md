# ani_recommend_api.cr
Web-API for anirecommend.vercel.app a Free REST API for Anime Recommendations

## Example
```cr
require "./ani_recommend_api"

ani_recommend = AniRecommendApi.new
random_anime = ani_recommend.get_random_anime()
puts random_anime
```
