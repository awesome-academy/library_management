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
             name: "Ba thi hào dân tộc",
             content: "noi ve:",
             quantity_of_pages: 200,
             publishing_year: 1959,
             quantity_of_books: 20)
Book.create!(category_id: 1,
             publisher_id: 2,
             author_id: 2,
             name: "Duyên kỳ ngộ",
             content: "noi ve:",
             quantity_of_pages: 147,
             publishing_year: 1939,
             quantity_of_books: 15)
Book.create!(category_id: 2,
             publisher_id: 3,
             author_id: 3,
             name: "Viet Bac",
             content: "noi ve:",
             quantity_of_pages: 301,
             publishing_year: 1954,
             quantity_of_books: 30)
Book.create!(category_id: 2,
             publisher_id: 2,
             author_id: 4,
             name: "Anh co nge khong",
             content: "noi ve:",
             quantity_of_pages: 120,
             publishing_year: 1956,
             quantity_of_books: 10)
Book.create!(category_id: 5,
             publisher_id: 1,
             author_id: 5,
             name: "Trái cam vàng",
             content: "noi ve:",
             quantity_of_pages: 163,
             publishing_year: 1973,
             quantity_of_books: 20)
Review.create!(user_id: 1,
               book_id: 2,
               content: "qua hay")
Review.create!(user_id: 1,
               book_id: 3,
               content: "that la di vao long nguoi")
Review.create!(user_id: 2,
               book_id: 2,
               content: "that la mot cuon sach hay")