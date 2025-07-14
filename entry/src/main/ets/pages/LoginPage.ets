@Entry//装饰器，：入口
@Component//装饰器：组件
struct LoginPage {
  @State username: string = ''//局部刷新，只刷新和这个数据有关的
  @State password: string = ''
  @State rememberMe: boolean = false
//大驼峰命名法则

  build() {
    Column({space:30}){//简单布局，列和行的线性布局
      Image($r('app.media.photo'))
        .width(120)
        .margin({top:160})
      //$$与@State一起叫数据双向绑定
      TextInput({placeholder:'用户名',text:$$this.username})
        .width('80%')

      TextInput({placeholder:'密码',text:$$this.password})
        .width('80%')
        .type(InputType.Password)
      //复选框与忘记密码
      Row() {
        // 记住我复选框
        Row({space: 5}) {
          Checkbox()
            .shape(CheckBoxShape.ROUNDED_SQUARE)
            .select(this.rememberMe)
            .onChange((isChecked: boolean) => {
              this.rememberMe = isChecked
            })
          Text('记住我')
            .fontSize(14)
            .margin({ left: 8 })
        }
        .justifyContent(FlexAlign.Start)

        // 忘记密码链接
        Text('忘记密码?')
          .fontSize(14)
          .fontColor('#0066cc')
          .onClick(() => {
            // 处理忘记密码逻辑，转接到另一个页面
          })
      }
      .width('80%')
      .justifyContent(FlexAlign.SpaceBetween)

      //登录按钮及其实现
      Button('登录')
        .onClick((event: ClickEvent) => {
          //登录逻辑
          if (!this.username || this.username.trim().length == 0) {
            this.getUIContext().getPromptAction().showToast({message:'请输入用户名',duration:2000})
          }
          else if (!this.password || this.password.trim().length == 0) {
            this.getUIContext().getPromptAction().showToast({message:'请输入密码',duration:2000})
          }
          else{
            if(this.username == 'a' && this.password == 'a'){
              this.getUIContext().getPromptAction().showToast({message:'登录成功'})
              //页面跳转：
              //.pushUrl()可以返回上一个页面
              //.replaceUrl()替换页面，不可返回
              this.getUIContext().getRouter().replaceUrl({url:'pages/MainPage'})
            }
            else{
              this.getUIContext().getPromptAction().showToast({message:'用户名或密码错误'})
              this.password = ''
            }
          }
      })
        .width('80%')
        .height(40)
    }
    .height('100%')
    .width('100%')
    .backgroundImage($r('app.media.login'))
    .backgroundImageSize(ImageSize.FILL)
    .expandSafeArea([SafeAreaType.SYSTEM])//扩展到安全区域
  }
}