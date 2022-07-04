The script counts occurrences of each word in file.
The result of the count is written to stdout.
For top 10 frequent words special files are created witn names "word_n", where n is the count of the occurrences. 
Usage: build and run the container, then
```bash
docker exec mycontainer /counts.sh $filename $output_folder
```
