crumb :root do
  link "Home", root_path
end

crumb :hobbies do
  link "投稿詳細", hobby_path
  parent :root
end

crumb :hobby do
  link"投稿編集", edit_hobby_path
  parent :hobbies
end