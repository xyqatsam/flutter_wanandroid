/// http://www.wanandroid.com/blog/show/2

class Api {
  static const baseUrl = 'http://www.wanandroid.com/';

  // 获取公众号列表 GET
  static const wxarticle = 'wxarticle/chapters/json';

  // 查看某个公众号历史数据 GET | 参数：公众号 ID：拼接在 url 中，eg:405 | 公众号页码：拼接在url 中，eg:1 Tips: wxarticle/list/405/1/json
  static const wxarticleHistory = 'wxarticle/list/json';

  static const article = 'article/list/';

  // 首页banner
  static const banner = 'banner/json';

  // 常用网站
  static const friend = 'friend/json';

  // 体系
  static const tree = 'tree/json';

  // 项目分类
  static const projectTree = 'project/tree/json';

  // 登陆
  static const login = 'user/login';

  // 注册
  static const register = 'user/register';

  // 退出
  static const logout = 'user/logout/json';

  
}