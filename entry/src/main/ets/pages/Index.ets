@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'HarmonyOS'
        })
      Button('高级按钮')
        .width(200)
        .height(60)
        .backgroundColor('#ff0000')
        .alignRules({
          middle: { anchor: '__container__', align: HorizontalAlign.Center },

        })
        .onClick((event: ClickEvent) => {
        this.message = '你好！'
      })
    }
    .height('100%')
    .width('100%')
  }
}