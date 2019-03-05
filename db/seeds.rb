User.create!(email: "phambadat.97@gmail.com",
              name: "Pham Ba Dat",
              gender: User.genders[:male],
              date_of_birth: "12/07/1997",
              address: "02 ha khe",
              phone: "0368443565",
              role: 1)

User.create!(email: "hotrunganh@gmail.com",
              name: "Ho Trung Anh",
              gender: User.genders[:male],
              date_of_birth: "12/07/1997",
              address: "02 ha khe",
              phone: "0368443565",
              role: 1)

Category.create!(name: "Love",
                 parent_id: 0)
Category.create!(name: "Antique",
                 parent_id: 0)
Category.create!(name: "Fights",
                 parent_id: 0)
Category.create!(name: "Comedy",
                 parent_id: 0)
Category.create!(name: "Romantic",
                 parent_id: 0)

Publisher.create!(name: "Kim Dong",
                  address: "586 Duong Lan, Ha Noi")
Publisher.create!(name: "Giao Duc",
                  address: "Quan 2, TP.HCM")
Publisher.create!(name: "Da Nang",
                  address: "Thanh Khe, Da Nang")

Author.create!(name:"Xuan Dieu",
               profile:"Ong sinh nam 1916",
               avatar:"xuandieu.jpg")
Author.create!(name:"Hàn Mặc Tử",
               profile:"Ong sinh nam 1912",
               avatar:"mactu.jpg")
Author.create!(name:"Tố Hữu",
               profile:"Ong sinh nam 1920",
               avatar:"tohuu.jpg")
Author.create!(name:"Văn Cao",
               profile:"Ong sinh nam 1923",
               avatar:"vancao.jpg")
Author.create!(name:"Nguyễn Thị Hồng Ngát",
               profile:"Ba sinh nam 1950",
               avatar:"hongngat.jpg")

Book.create!(category_id: 1,
             publisher_id: 1,
             author_id: 1,
             name: "Vội Vàng",
             content: "Vội vàng in trong tập Thơ thơ (1933- 1938), xuất bản năm 1938",
             quantity_of_pages: 200,
             publishing_year: 1959,
             quantity_of_books: 20,
             price: 20000,
             image: "image/book/truyenkieu.jpg")
Book.create!(category_id: 1,
             publisher_id: 2,
             author_id: 2,
             name: "Duyên kỳ ngộ",
             content: "Trình Tinh là cô gái hiện đại vô tình xuyên không ngược về một thời đại lạ lùng không có trong lịch sử. Linh hồn cô nhập vào thân xác một cô bé sáu tuổi tên là Thanh La",
             quantity_of_pages: 147,
             publishing_year: 1939,
             quantity_of_books: 15,
             price: 40000,
             image: "image/book/truyenkieu.jpg")
Book.create!(category_id: 2,
             publisher_id: 3,
             author_id: 3,
             name: "Việt Bắc",
             content: "đã được xuất bản trên báo chí trước khi in thành tập lần đầu tiên vào năm 1954.",
             quantity_of_pages: 301,
             publishing_year: 1954,
             quantity_of_books: 30,
             price: 35000,
             image: "image/book/truyenkieu.jpg")
Book.create!(category_id: 2,
             publisher_id: 2,
             author_id: 4,
             name: "Anh Có Nge Không",
             content: "Bài thơ Anh có nghe không là bài thơ tình yêu nói lên tâm sự của một cô gái muốn thổ lộ tình cảm với người mình yêu.",
             quantity_of_pages: 120,
             publishing_year: 1956,
             quantity_of_books: 10,
             price: 32000,
             image: "image/book/truyenkieu.jpg")
Book.create!(category_id: 5,
             publisher_id: 1,
             author_id: 5,
             name: "Trái cam vàng",
             content: "Trái cam vàng (thơ, in chung, 1973)",
             quantity_of_pages: 163,
             publishing_year: 1973,
             quantity_of_books: 20,
             price: 16000,
             image: "image/book/truyenkieu.jpg")
Review.create!(user_id: 1,
               book_id: 2,
               content: "qua hay")
Review.create!(user_id: 1,
               book_id: 3,
               content: "that la di vao long nguoi")
Review.create!(user_id: 2,
               book_id: 2,
               content: "that la mot cuon sach hay")