### 1. playlist_track 테이블에 `A`라는 별칭을 부여하고 데이터를 출력하세요.

| 단, 모든 컬럼을 `PlaylistId` 기준으로 내림차순으로 5개만 출력하세요.

```sql
SELECT *
FROM playlist_track AS A
ORDER BY PlaylistId ASC
LIMIT 5;
```

```
PlaylistId  TrackId
----------  -------
1           1
1           2
1           3
1           4
1           5
```

### 2. tracks 테이블에 `B`라는 별칭을 부여하고 데이터를 출력하세요

| 단, 모든 컬럼을 `TrackId` 기준으로 오름차순으로 5개만 출력하세요.

```sql
SELECT *
FROM tracks B
ORDER BY TrackId DESC
LIMIT 5;
```

```
TrackId  Name                                                          AlbumId  MediaTypeId  GenreId  Composer                 Milliseconds  Bytes    UnitPrice
-------  ------------------------------------------------------------  -------  -----------  -------  -----------------------  ------------  -------  ---------
3503     Koyaanisqatsi                                                 347      2            10       Philip Glass             206005        3305164  0.99

3502     Quintet for Horn, Violin, 2 Violas, and Cello in E Flat Majo  346      2            24       Wolfgang Amadeus Mozart  221331        3665114  0.99
         r, K. 407/386c: III. Allegro

3501     L'orfeo, Act 3, Sinfonia (Orchestra)                          345      2            24       Claudio Monteverdi       66639         1189062  0.99

3500     String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II.  344      2            24       Franz Schubert           139200        2283131  0.99
          Andante - Allegro assai

3499     Pini Di Roma (Pinien Von Rom) \ I Pini Della Via Appia        343      2            24                                286741        4718950  0.99
```

### 3. 각 playlist_track 해당하는 track 데이터를 함께 출력하세요.

| 단, PlaylistId, Name 컬럼을 `PlaylistId` 기준으로 내림차순으로 10개만 출력하세요.

```sql
SELECT A.PlaylistId, B.Name
FROM playlist_track A INNER JOIN tracks B
    ON A.TrackId = B.TrackId
ORDER BY A.PlaylistId DESC
LIMIT 10;
```

```
PlaylistId  Name
----------  -----------------------
18          Now's The Time
17          The Zoo
17          Flying High Again
17          Crazy Train
17          I Don't Know
17          Looks That Kill
17          Live To Win
17          Ace Of Spades
17          Creeping Death
17          For Whom The Bell Tolls
```

### 4. `PlaylistId`가 `10`인 track 데이터를 함께 출력하세요.

| 단, PlaylistId, Name 컬럼을 `Name` 기준으로 내림차순으로 5개만 출력하세요.

```sql
SELECT A.PlaylistId, B.Name
FROM playlist_track A INNER JOIN tracks B
    ON A.TrackId = B.TrackId
WHERE A.PlaylistId = 10
ORDER BY B.Name DESC
LIMIT 5;
```

```
PlaylistId  Name
----------  ------------------------
10          Women's Appreciation
10          White Rabbit
10          Whatever the Case May Be
10          What Kate Did
10          War of the Gods, Pt. 2
```

### 5. tracks 테이블을 기준으로 tracks `Composer` 와 artists 테이블의 `Name`을 `INNER JOIN`해서 데이터를 출력하세요.

| 단, 행의 개수만 출력하세요.

```sql
SELECT COUNT(*)
FROM tracks A INNER JOIN artists B
    ON A.Composer = B.Name;
```

```
COUNT(*)
--------
402
```

### 6. tracks 테이블을 기준으로 tracks `Composer` 와 artists 테이블의 `Name`을 `LEFT JOIN`해서 데이터를 출력하세요.

| 단, 행의 개수만 출력하세요.

```sql
SELECT COUNT(*)
FROM tracks A LEFT JOIN artists B
    ON A.Composer = B.Name;
```

```
COUNT(*)
--------
3503
```

### 7. `INNER JOIN` 과 `LEFT JOIN` 행의 개수가 다른 이유를 작성하세요.

```plain

```

### 8. invoice_items 테이블의 데이터를 출력하세요.

| 단, InvoiceLineId, InvoiceId 컬럼을 `InvoiceId` 기준으로 오름차순으로 5개만 출력하세요.

```sql
SELECT InvoiceLineId, InvoiceId
FROM invoice_items
ORDER BY InvoiceId ASC
LIMIT 5;
```

```
InvoiceLineId  InvoiceId
-------------  ---------
1              1
2              1
3              2
4              2
5              2
```

### 9. invoices 테이블의 데이터를 출력하세요.

| 단, InvoiceId, CustomerId 컬럼을 `InvoiceId` 기준으로 오름차순으로 5개만 출력하세요.

```sql
SELECT InvoiceId, CustomerId
FROM invoices
ORDER BY InvoiceId ASC
LIMIT 5;
```

```
InvoiceId  CustomerId
---------  ----------
1          2
2          4
3          8
4          14
5          23
```

### 10. 각 invoices_item에 해당하는 invoice 데이터를 함께 출력하세요.

| 단, InvoiceLineId, InvoiceId 컬럼을 `InvoiceId` 기준으로 내림차순으로 5개만 출력하세요.

```sql
SELECT InvoiceLineId, InvoiceId
FROM invoices_item
ORDER BY InvoiceId DESC
LIMIT 5;
```

### 11. 각 invoice에 해당하는 customer 데이터를 함께 출력하세요.

| 단, InvoiceId, CustomerId 컬럼을 `InvoiceId` 기준으로 내림차순으로 5개만 출력하세요.

```

```

### 12. 각 invoices_item(상품)을 포함하는 invoice(송장)와 해당 invoice를 받을 customer(고객) 데이터를 모두 함께 출력하세요.

| 단, InvoiceLineId, InvoiceId, CustomerId 컬럼을 `InvoiceId` 기준으로 내림차순으로 5개만 출력하세요.

```

```

### 13. 각 cusotmer가 주문한 invoices_item의 개수를 출력하세요.

| 단, CustomerId와 개수 컬럼을 `CustomerId` 기준으로 오름차순으로 5개만 출력하세요.

```sql

```
