# 데이터베이스 설계도

## 다이아그램

<img src="https://user-images.githubusercontent.com/45276804/98888133-b00c5200-24da-11eb-8cab-51e55db2574c.png" width="100%">

## 테이블 
### cf.) function
- NN : `Not Null`
- UQ : `Value Unique`
- AI : `Auto Incremental`

### manager
|    column     |    Resulty Type       | Key Type | function | default|
| :----------: | :---------------------: | :----------: |:----------: |:----------: |
|   ID    |    VARCHAR(100)  | primary| NN / UQ | - |
| PASSWORD  |    VARCHAR(256)  |-| NN | - |
|   NAME    | VARCHAR(45) |-| NN| - |
|   AUTHORITY   | VARCHAR(45) | - | NN | `ROLE_USER` |
| ENABLED | TINYINT | - | NN | `'1'` |
| FACILITY| VARCHAR(100) | - | NN | - |

### room
|    column     |    Result Type       | Key Type | function | default|
| :----------: | :---------------------: | :----------: |:----------: |:----------: |
|   room_id    |   INT  | primary| NN / UQ | AI | - |
| room_name  |    VARCHAR(100)  |-| NN | - |
|   size   | VARCHAR(45) |-| NN| - |
|   capacity   | INT | - | NN | - |
| location | VARCHAR(200 | - | NN | - | 
| image | VARCHAR(200) | - | - | `NULL` | 
| feature | VARCHAR(100) | - | - | `NULL` |
| status | VARCHAR(100) | - | NN | `'0'` |

### reserver
|    column     |    Result Type       | Key Type | function | default|
| :----------: | :---------------------: | :----------: |:----------: |:----------: |
|   reserver_id    |   INT  | primary| NN / UQ / AI | - |
| reserver_name  |    VARCHAR(45)  |-| NN | - |
|   reserver_phone  | VARCHAR(45) |-| NN |-|
| class | VARCHAR(45) | - | - | `NULL` |

### reservation

|    column     |    Resulty Type       | Key Type | function | default|
| :----------: | :---------------------: | :----------: |:----------: |:----------: |
|    reservation_id    |    INT  | primary| NN / UQ / AI | - |
|      check_in     |    DATETIME  |-| NN | - |
|   check_out    | DATETIME |-| NN| - |
|     room_id      | INT| foreign(room)| NN | - |
| reserver_id | INT | foreign(reserver) | NN | - |