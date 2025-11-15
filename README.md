# ani_recommend_api.cr
Web-API for [anirecommend.vercel.app](https://anirecommend.vercel.app/) a Free REST API for Anime Recommendations

[![Github Card](https://github-readme-stats.vercel.app/api/pin/?theme=transparent&hide_border=true&show_owner=true&username=hotheadhacker&repo=no-as-a-service)](https://github.com/hotheadhacker/no-as-a-service)


## Example
```cr
require "./ani_recommend_api"

ani_recommend = AniRecommendApi.new
random_anime = ani_recommend.get_random_anime()
puts random_anime
```
