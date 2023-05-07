build:
	hugo

clean:
	rm -r dist

post:
	hugo new posts/$(POST_NAME).md
	awk -v title="$POST_TITLE" '/^title: / && $2 == "\"'"$POST_NAME"\"'"$/ {$0="title: " title} 1' "content/posts/$POST_NAME.md" > temp.md && mv temp.md "content/posts/$POST_NAME.md"
