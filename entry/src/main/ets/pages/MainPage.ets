@Entry
@Component
struct MainPage {
  @State message: string = 'Hello World';
  @Styles imagestyle(){
    .margin(8)
  }
  build() {
    Grid(){
      GridItem(){
        Column(){
          Image($r('app.media.icon_main_cloud_a'))
            .imagestyle()
          Text('天气其')
            .fontSize(15)
        }
        .onClick(() => {
          this.getUIContext().getRouter().pushUrl({url: 'pages/SwitchPage'})
        })
      }
      GridItem(){
        Column(){
          Image($r('app.media.icon_main_cloud_a'))
            .imagestyle()
          Text('天气其')
            .fontSize(15)

        }
      }
      GridItem(){
        Column(){
          Image($r('app.media.icon_main_cloud_a'))
            .imagestyle()
          Text('天气其')
            .fontSize(15)

        }
      }
      GridItem(){
        Column(){
          Image($r('app.media.icon_main_cloud_a'))
            .imagestyle()
          Text('天气其')
            .fontSize(15)

        }
      }
      GridItem(){
        Column(){
          Image($r('app.media.icon_main_cloud_a'))
            .imagestyle()
          Text('天气其')
            .fontSize(15)

        }
      }
      GridItem(){
        Column(){
          Image($r('app.media.icon_main_cloud_a'))
            .imagestyle()
          Text('天气其')
            .fontSize(15)

        }
      }
    }
    .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
    .rowsGap(20)
    .margin({left:18,right:18})//如果设置了width,尽量用padding
  }
}