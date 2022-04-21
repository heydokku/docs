1. Curl
2. Wdget
3. Httpie

# Curl Reference

Use the `curl` command line tool from your terminal window to access web pages, resources, and API's. This swiss-army knife of the internet also supports many more protocols and tools.

## Command format

    curl [options] URL

The complete, offical reference page is [here](https://curl.se/docs/manpage.html).

### Download a file, page, or response

    -o, --output <file> -- Saves data in given file
    -O, --remote-name   -- Saves as URL filename without a path

    curl -o robots.txt https://example.com/robots.txt

### Authentication

    -u, --user <user:password> -- Use HTTP Authentication
    --anyauth                  -- Use the more secure authentication scheme
    --basic                    -- use Basic Authentication (default)
    --digest                   -- HTTP Digest Authentication
    --ntlm                     -- Microsoft NTLM authentication
    --oauth2-bearer <token>    -- OAuth2 token
    --negotiate

    curl -u "apikey:" https://example.org


### Additional Headers

    -H, --header <"Header: Value" | @headerfilename>
    -A, --user-agent <name>
    -e, --referer <URL>

    curl -H "Accept: application/json" https://json.org

### Cookies

    -b <"name=value;name=value" | filename>
    -c, --cookie-jar <filename>

### HTTP Method & Get Request with Query Parameters

When you give data parameters (-d, --data, --data-urlencode), curl will make a POST request. To force these data parameters onto the query part of the URL as a GET request, use --get

    -G, --get               -- Use with data args for query params
    -I, --head
    -X, --request <command> -- custom: PUT, DELETE, PATCH + WebDAV

    curl --get --data-urlencode "q=foo" https://search.com/

### Certificates

    -E, --cert <certificate[]:password]> -- Use client cert
    -k, --insecure                       -- allow insecure operations

### Data: Payload, Forms, Fields, Files, and Query Parameters

    --data-urlencode <data> -- URL (Percent) encodes data
    data can be formatted as:
      content        -- use "=content" instead if contains = or @
      =content       -- do not interpret the data (does not send the initial =)
      name=content   -- name is not encoded
      @filename      -- Load data from the filename
      name=@filename -- loads value from the filename
      (Content-Type: application/x-www-form-urlencoded)

    -F, --form <name=content>
      (Content-Type: multipart/form-data)
      name=@filename -- Uploads file as binary as attachment (- for Stdin)
      name=<filename -- Gets field value from the filename
      name=@filename;type=image/png;filename=name
        -- Specify the Content-Type and upload filename (must quote)

    -d, --data <"data"|"name=value"|"@filename"> -- does not encode
    --data-raw <"data"|"@data">                  -- Doesn't interpret file name
    --data-binary <data|@filename>

    -T, --upload-file <file>

### Curl Control

    -i, --include       -- Include HTTP Response Headers
    -v, --verose        -- Show all headers & data sent and received
    -K, --config <file> -- Additional command line arguments
    -f, --fail          -- Fail silently on server errors
    -L, --location      -- Follow redirect Location headers
    -s, --silent        -- No progress or error message
    -S, --show-error    -- with ilent but show errors (-sS)
    --no-progress-meter -- Nuf said
    -D, --dump-header <filename> -- Save response headers


    HTTPIE

### Printing options
-v, --verbose            # same as --print=HhBb --all
-h, --headers            # same as --print=h
-b, --body               # same as --print=b
    --all                # print intermediate requests
    --print=HhBb         # H: request headers
                         # B: request body
                         # h: response headers
                         # b: response body
    --pretty=none        # all | colors | format
    --json | -j          # Response is serialized as a JSON object.

### Authentication

    --session NAME
-a, --auth USER:PASS
    --auth-type basic
    --auth-type digest

### Session

    --session NAME       # store auth and cookies
    --session-read-only NAME

### Downloading

-d, --download           # like wget
-c, --continue
-o, --output FILE

### Others

-F, --follow             # follow redirects
    --max-redirects N    # maximum for --follow
    --timeout SECONDS
    --verify no          # skip SSL verification
    --proxy http:http://foo.bar:3128

### Raw JSON

$ echo '{"hello": "world"}' | http POST example.com/post

### Forms

$ http --form POST example.com \
    name="John Smith" \
    cv=@document.txt

### Parameters

$ http POST http://example.com/posts/3 \
    Origin:example.com \  # :   HTTP headers
    name="John Doe" \     # =   string
    q=="search" \         # ==  URL parameters (?q=search)
    age:=29 \             # :=  for non-strings
    list:='[1,3,4]' \     # :=  json
    file@file.bin \       # @   attach file
    token=@token.txt \    # =@  read from file (text)
    user:=@user.json      # :=@ read from file (json)
