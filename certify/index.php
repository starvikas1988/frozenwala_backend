<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JEE ELECTRONICS</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box;
        }

        *:before,
        *:after {
            box-sizing: border-box;
        }

        h1 {
            font-weight: 700;
            margin-bottom: 0.5em;
        }

        .box {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate3d(-50%, -50%, 0);
            width: 100%;
            max-width: 800px;
            padding: 5px;
            border: 2px solid #b78846;
        }

        .box:before,
        .box:after {
            content: "•";
            position: absolute;
            width: 14px;
            height: 14px;
            font-size: 14px;
            color: #b78846;
            border: 2px solid #b78846;
            line-height: 12px;
            top: 5px;
            text-align: center;
        }

        .box:before {
            left: 5px;
        }

        .box:after {
            right: 5px;
        }

        .box .box-inner {
            position: relative;
            border: 2px solid #b78846;
            padding: 40px;
        }

        .box .box-inner:before,
        .box .box-inner:after {
            content: "•";
            position: absolute;
            width: 14px;
            height: 14px;
            font-size: 14px;
            color: #b78846;
            border: 2px solid #b78846;
            line-height: 12px;
            bottom: -2px;
            text-align: center;
        }

        .box .box-inner:before {
            left: -2px;
        }

        .box .box-inner:after {
            right: -2px;
        }

        .input-content {
            position: relative;
            padding: 10px 100px;
            background: #fff;
            z-index: 10;
        }

        .underline {
            width: 100%;
        }
    </style>

</head>

<body>
    <form method="post" action="nextshow.php" >
    <div class="box">
        <div class="box-inner">
            <h1 style="
        POSITION: RELATIVE;
    TEXT-ALIGN: center;
    color: #2d3192;
    font-size: 50px;">JEE ELECTRONICS</h1>
            <h5 style="text-align: center ;color: #2d3192;">GOVT. OF INDIA, MINISTRY OF MICRO, SMALL & MEDIUM
                ENTERPRISES REGISTRATION NO. WB 18D0026883</h5>
            <H3 style="text-align: center;color: #2d3192;">Fartabad, Near Katherbari, P.O.-Gari, Kolkata-70084</H3>
            <div style="background-color: #2d3192;">
                <h2 style="text-align: center; color: #ffff;">CERTIFICATE OF COMPLETION</h2>
            </div>
            <div>
                <label for="#" style="    color: #2d3192;
                        color: #2d3192;
    font-size: 160%;
    font-family: initial;
    position: relative;">This is to certify that</label>
                <input name="entry" type="text" placeholder="">
                
                <label for="#" style="    position: relative;
                font-size: 160%;
                color: #2d3192;">of Class</label>
                <input type="text" name="entry1">
                
                <label for="#" style="    position: relative;
                font-size: 160%;
                color: #2d3192; ">of Lake School For Girls, Kolkata has successfully completed the computer awareness programme, for the academic year 20
                    </label>
                <input type="text" name="entry2">
                
                <label for="#" style="    position: relative;
                    font-size: 160%;
                    color: #2d3192; " >and obtained grade</label>
                    <input type="text" name="entry3">
                
                <label for="#" style="    position: relative;
                    font-size: 160%;
                    color: #2d3192; ">with</label>
                    <input type="text" name="entry4">
                
                <label for="#" style="    position: relative;
                    font-size: 160%;
                    color: #2d3192; ">% marks.</label>
                
                    <hr>
                    <label for="#" style="    position: relative;
                    font-size: 160%;
                    color: #2d3192; ">Date : </label>
                    <input type="date" name="entry5">

                    

                    <h for="#" style="    position: relative;
                    font-size: 140%;
                    right: -53%;
                    color: #2d3192; ">Project coordinator JEE ELECTRONICS</h6>


                    
            </div>
            
        </div>
        <button  style="
            position: inherit;
            text-align: center;
            left: 45%;
            border: black;
            MARGIN-TOP: 5%;">Submit</button>
    </div>
    </form>

</body>

</html>