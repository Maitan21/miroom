# API

### RoomListALL
- URL : http://kr.cafecremona.shop:8080/api/RoomList
- Result Type : List

|   Name     | Parameter Type    | Samples|
| :----------: | :---------------------: |  :---------------------: |
|   room_id  | int| `1`
| room_name |String| `회의실1`
|   size  |String| `소`
|   capacity | int | `2`
| location | String | `3층`
| image | String | `img URL`
| feature | String | `Wifi/프로젝터/보드`
| status | int | `0`


### ReservationListALL
- URL : http://kr.cafecremona.shop:8080/api/ReservationList
- Result Type : List

|   Name     | Parameter Type    | Samples|
| :----------: | :---------------------: |  :---------------------: |
|   reserve_id  | int| `1`
| check_in_Date |String| `2020 / 11 / 16`
|   check_in_Hour  |String| `14`
|   check_in_Min | String | `47`
| check_out_Date |String| `2020 / 11 / 16`
|   check_out_Hour  |String| `14`
|   check_out_Min | String | `47`
|   check_in |Date| `2020-11-16T10:00:00.000+00:00`
|   check_out | Date | `2020-11-16T16:00:00.000+00:00`
| reserver_name | String | `홍길동`
| reserver_phone | String | `010-1234-5678`
| room_name | int | `3`
| status | int | `40`