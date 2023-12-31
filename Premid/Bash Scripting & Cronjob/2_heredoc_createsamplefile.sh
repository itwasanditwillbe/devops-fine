#! /usr/bin/bash
(
cat <<- 'EOF'
	<html>
    		<head>
        		<title>
        			AWS EC2 Information
        		</title>
    		</head>

    		<body>
    			<h1>AWS EC2 Information</h1>
    		</body>
	</html>
EOF
) > ec2info.html
