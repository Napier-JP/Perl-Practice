# $ginger->[2][1] $gingerを取り出し、配列リファレンスとしてデリファレンス。その第三要素を取り出す。
# その中身を配列リファレンスとしてde-ref 第二要素を取り出す
# $ginger is just scalar ref

# ${$ginger[2]}[1] 
# $ginger[2] is @ginger's 3rd element
# ${$ginger[2])[1] is ref to 2nd element
