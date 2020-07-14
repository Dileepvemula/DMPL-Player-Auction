<html>
    <head>
    <link rel="stylesheet" href="sam.css">
    <script src="script.js" type="text/javascript"></script>
    <title> DMPL 2K17 AUCTION </title>
    </head>
    <body onload='begin()'>
    <!---->
   
     
<!---->
    <div>
        <p id='id1' ><img id='i1' src='/images/logo.jpg' align='middle'> DMPL 2K17 OFFICIAL AUCTION
        <br>HOST SITE
        </p>
        
    </div>	
    <div class='details'>
        <div class='details'>
            <p> <h3>CURRENT BID	DETAILS :</h3></p>
            <img id='i2' src='/images/dummy.jpg'>
        </div>
    
         
        <div class='details'>
        
	    <br><br><br>
            <p class="fill" id="pname">NAME:<input type="text" name="player_name" value="player_name" id="pna" > </p>
            <p class="fill" id="role">ROLE:<input type="text" name="role" value="ROLE" id="r" > </p>
	    <p class="fill" id="dmplid">DMPL ID:<input type="text" name="dmpl_id" value="DMPL_ID" id="did" > </p>
            <p class="fill">PRICE: <input type='integer' name='PRICE' value="0" id="price1"> </p>
            <p class="fill" >TEAM: 
            <select  name="team" id="team_id">
                <option value="team">TEAM </option>
                <option value="FIREBALLS XI">FIREBALLS XI</option>
                <option value="THE BOLTZ">THE BOLTZ</option>
                <option value="CRICKET CONVICTS">CRICKET CONVICTS</option>
                <option value="TERRIFIC RUNNERS">TERRIFIC RUNNERS</option>
                <option value="SUNRISERS">SUNRISERS</option>
                <option value="HARA HARA MAHADEV">HARA HARA MAHADEV</option>
                <option value="ASSASSINS">ASSASSINS</option>
                <option value="LOCAL BOYS">LOCAL BOYS</option>
                <option value="VIVIDH UNITED">VIVIDH UNITED</option>
                <option value="RIVER SHARKS">RIVER SHARKS</option>
                <option value="MIGHTY EAGLES">MIGHTY EAGLES</option>
                <option value="SMASHING SIXERS">SMASHING SIXERS</option>
            </select></p>

        <p id='status'></p>
            <button class ='button' onclick='sold()' type="submit" value="SOLD ">SOLD </button>
            <button class='button1' onclick='unsold()' type="submit" value="UNSOLD ">UNSOLD</button>
            
          
          
         </div>
          
    </div>
    <div class='sets'>
    <p id='sets_select'></p>
	<div align="center">
        <button class ='A' onclick='decode("A")'>SET A</button>
        <button class ='B' onclick='decode("B")'>SET B</button>
        <button class ='C' onclick='decode("C")'>SET C</button>
        <button class ='D' onclick='decode("D")'>SET D</button>
        <button class ='G' onclick='decode("E")'>SET E</button>
	</div>
        <form>
            <input type="radio" name="status" value="0" id="una" checked> UNAUCTIONED<br>
            <input type="radio" name="status" value="1" id="uns"> UNSOLD<br>
        </form>
	 

    </div>

    <div lass='balance'  align="center">
	
        <div class='t' id="t1">
            <p>FIREBALLS XI</p>
            <p> <input type='integer' name='bal' value="0" id="b1" size="5"></p>
        </div>

        <div class='t' id="t2">
            <p>THE BOLTZ</p>
            <p> <input type='integer' name='bal' value="0" id="b2" size="5"></p>
        </div>

        <div class='t' id="t3">
            <p>CRICKET CONVICTS</p>
           <p> <input type='integer' name='bal' value="0" id="b3" size="5"></p>
        </div>

        <div class='t' id="t4">
            <p>TERRIFIC RUNNERS</p>
           <p> <input type='integer' name='bal' value="0" id="b4" size="5"></p>
        </div>

        <div class='t' id="t5">
            <p>SUNRISERS</p>
           <p> <input type='integer' name='bal' value="0" id="b5" size="5"></p>
        </div>

        <div class='t' id="t6">
            <p>HARA HARA MAHADEV</p>
           <p> <input type='integer' name='bal' value="0" id="b6" size="5"></p>
        </div>

        <div class='t' id="t7">
            <p>ASSASSINS</p>
            <p> <input type='integer' name='bal' value="0" id="b7" size="5"></p>
        </div>

        <div class='t' id="t8">
            <p>LOCAL BOYS</p>
           <p> <input type='integer' name='bal' value="0" id="b8" size="5"></p>
        </div>

        <div class='t' id="t9">
            <p>VIVIDH UNITED</p>
            <p> <input type='integer' name='bal' value="0" id="b9" size="5"></p>
        </div>

        <div class='t' id="t10">
            <p>RIVER SHARKS</p>
           <p> <input type='integer' name='bal' value="0" id="b10" size="5"></p>
        </div>

        <div class='t' id="t11">
            <p>MIGHTY EAGLES</p>
            <p> <input type='integer' name='bal' value="0" id="b11" size="5"></p>
        </div>

        <div class='t' id="t12">
            <p>SMASHING SIXERS</p>
           <p> <input type='integer' name='bal' value="0" id="b12" size="5"></p>
        </div>
    </div>

    </body>
</html>


