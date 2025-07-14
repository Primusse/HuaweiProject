@Entry
@Component
struct SwitchPage {
  @State message: string = '关';
  @State img:string = 'app.media.icon_switch_off1'
@Styles images(){
  .width(200)


}
  build() {
    RelativeContainer() {//相对布局
      Column(){
        Image($r(this.img))
          .images()
        if(this.message == '关'){
          Text(this.message)
            .fontSize(20)
            .fontColor(Color.Red)
        }
        else{
          Text(this.message)
            .fontSize(20)
            .fontColor(Color.Green)
        }

      }
      .alignRules({
        center: { anchor: '__container__', align: VerticalAlign.Center },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      })
      .onClick(() => {
        this.message=this.message == '开' ? '关':'开'
        this.img = this.img == 'app.media.icon_switch_off1'?
          'app.media.icon_switch_on1' : 'app.media.icon_switch_off1'
      })
    }
    .height('100%')
    .width('100%')
  }
}