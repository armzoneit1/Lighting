<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php require('inc_header.php'); $pageName="ir"; ?>
</head>
<body>
    <?php require('inc_topmenu.php'); ?>
    <?php require('IR_inc_topmenu.php'); ?>
    <?php require('inc_sidemenu.php'); ?>

    <!---------- IR 09 CORPORATE INFO :: COMPLAINTS ---------->
    <div class="content-padding foot-pad">
        <div class="container-fluid">
            <div class="wrap-pad">
                <div class="row">
                    <div class="col">
                        <div class="header-twoline">
                            <h5>สอบถามข้อมูลนักลงทุน</h5>
                            <h1>ช่องทางการรับเรื่องร้องเรียน</h1>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-xl-10 col-lg-11 col-md-10 col-12">
                        <div class="formBG input-form complianForm">
                            <div class="row">
                                <div class="col-lg-3 col-md-12 col-12">
                                    <p>ประเภทการรับเรื่องร้องเรียน<span>*</span></p>
                                </div>
                                <div class="col-lg-9 col-md-12 col-12">
                                    <select class="form-select form-control">
                                        <option selected>โปรดเลือก</option>
                                        <option value="1">ข้อมูลส่วนบุคคล​</option>
                                        <option value="2">การร้องเรียนเกี่ยวกับจรรยาบรรณทางธุรกิจ</option>
                                        <option value="3">การร้องเรียนเกี่ยวกับสิทธิมนุษยชน​</option>
                                        <option value="4">การเลือกปฏิบัติ</option>
                                        <option value="5">การล่วงละเมิดหรือคุกคามทางเพศ​</option>
                                        <option value="6">การคุกคามที่ไม่มีนัยยะทางเพศ</option>
                                        <option value="7">พบการทุจริต และ/หรือ ข้อสงสัย ภายในหน่วยงานของบริษัท​</option>
                                        <option value="8">พบการบกพร่องของเจ้าหน้าที่ และ/หรือ พนักงานบริษัท</option>
                                        <option value="9">พบการดำเนินงาน/กิจกรรม ที่ไม่โปร่งใสต่อผู้ถือหุ้น​</option>
                                        <option value="10">แจ้งข้อร้องเรียนอื่นๆ​</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-12 col-12">
                                    <p>รายละเอียด<span>*</span></p>
                                </div>
                                <div class="col-lg-9 col-md-12 col-12 w-note">
                                    <textarea class="form-control"></textarea>
                                    <p>ไม่เกิน 500 ตัวอักษร</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-12 col-12">
                                    <p>เอกสารแนบ</p>
                                </div>
                                <div class="col-lg-9 col-md-12 col-12 w-note">
                                    <div class="custom-file-upload">
                                        <!--<label for="file">File: </label>--> 
                                        <input type="file" id="file" name="myfiles[]" multiple />
                                    </div>
                                    <p>รองรับไฟล์ .jpg, .png, .gif, .doc, .docx, .xls, .xlsx, .pdf สูงสุด 3 ไฟล์ (ขนาดไม่เกิน 2MB)</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h6>ช่องทางติดต่อกลับผู้ร้องเรียน</h6>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-12 col-12">
                                    <p>ชื่อ-นามสกุล<span>*</span></p>
                                </div>
                                <div class="col-lg-9 col-md-12 col-12">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-12 col-12">
                                    <p>อีเมล<span>*</span></p>
                                </div>
                                <div class="col-lg-9 col-md-12 col-12">
                                    <input type="email" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-12 col-12">
                                    <p>โทรศัพท์</p>
                                </div>
                                <div class="col-lg-9 col-md-12 col-12">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-12 col-12">
                                    <p>ช่องทางอื่นๆ</p>
                                </div>
                                <div class="col-lg-9 col-md-12 col-12">
                                    <textarea class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-check mb-5">
                                        <input class="form-check-input" type="checkbox" value="" id="accept-term">
                                        <label class="form-check-label" for="accept-term">
                                        ฉันได้อ่านและยอมรับข้อกำหนดและเงื่อนไขที่ระบุไว้ใน <a href="">นโยบายความเป็นส่วนตัว</a> และยินยอมให้รวบรวมประมวลผลและ / หรือเปิดเผยข้อมูลส่วนบุคคลที่ฉันให้ไว้เพื่อบรรลุวัตถุประสงค์ดังกล่าวข้างต้น
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="content-center">
                                        <a class="buttonB m-size" href="">ส่งข้อมูล<i class="fas fa-paper-plane"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

    
    <?php require('IR_inc_footer.php'); ?>

    <script type="text/javascript">
        //Reference: 
        //https://www.onextrapixel.com/2012/12/10/how-to-create-a-custom-file-input-with-jquery-css3-and-php/
        ;(function($) {

        // Browser supports HTML5 multiple file?
        var multipleSupport = typeof $('<input/>')[0].multiple !== 'undefined',
            isIE = /msie/i.test( navigator.userAgent );

        $.fn.customFile = function() {

        return this.each(function() {

            var $file = $(this).addClass('custom-file-upload-hidden'), // the original file input
                $wrap = $('<div class="file-upload-wrapper">'),
                $input = $('<input type="text" class="file-upload-input" />'),
                // Button that will be used in non-IE browsers
                $button = $('<button type="button" class="file-upload-button"><i class="fas fa-paperclip"></i>Upload File</button>'),
                // Hack for IE
                $label = $('<label class="file-upload-button" for="'+ $file[0].id +'">Upload File</label>');

            // Hide by shifting to the left so we
            // can still trigger events
            $file.css({
            position: 'absolute',
            left: '-9999px'
            });

            $wrap.insertAfter( $file )
            .append( $file, $input, ( isIE ? $label : $button ) );

            // Prevent focus
            $file.attr('tabIndex', -1);
            $button.attr('tabIndex', -1);

            $button.click(function () {
            $file.focus().click(); // Open dialog
            });

            $file.change(function() {

            var files = [], fileArr, filename;

            // If multiple is supported then extract
            // all filenames from the file array
            if ( multipleSupport ) {
                fileArr = $file[0].files;
                for ( var i = 0, len = fileArr.length; i < len; i++ ) {
                files.push( fileArr[i].name );
                }
                filename = files.join(', ');

            // If not supported then just take the value
            // and remove the path to just show the filename
            } else {
                filename = $file.val().split('\\').pop();
            }

            $input.val( filename ) // Set the value
                .attr('title', filename) // Show filename in title tootlip
                .focus(); // Regain focus

            });

            $input.on({
            blur: function() { $file.trigger('blur'); },
            keydown: function( e ) {
                if ( e.which === 13 ) { // Enter
                if ( !isIE ) { $file.trigger('click'); }
                } else if ( e.which === 8 || e.which === 46 ) { // Backspace & Del
                // On some browsers the value is read-only
                // with this trick we remove the old input and add
                // a clean clone with all the original events attached
                $file.replaceWith( $file = $file.clone( true ) );
                $file.trigger('change');
                $input.val('');
                } else if ( e.which === 9 ){ // TAB
                return;
                } else { // All other keys
                return false;
                }
            }
            });

        });

        };

        // Old browser fallback
        if ( !multipleSupport ) {
        $( document ).on('change', 'input.customfile', function() {

            var $this = $(this),
                // Create a unique ID so we
                // can attach the label to the input
                uniqId = 'customfile_'+ (new Date()).getTime(),
                $wrap = $this.parent(),

                // Filter empty input
                $inputs = $wrap.siblings().find('.file-upload-input')
                .filter(function(){ return !this.value }),

                $file = $('<input type="file" id="'+ uniqId +'" name="'+ $this.attr('name') +'"/>');

            // 1ms timeout so it runs after all other events
            // that modify the value have triggered
            setTimeout(function() {
            // Add a new input
            if ( $this.val() ) {
                // Check for empty fields to prevent
                // creating new inputs when changing files
                if ( !$inputs.length ) {
                $wrap.after( $file );
                $file.customFile();
                }
            // Remove and reorganize inputs
            } else {
                $inputs.parent().remove();
                // Move the input so it's always last on the list
                $wrap.appendTo( $wrap.parent() );
                $wrap.find('input').focus();
            }
            }, 1);

        });
        }

        }(jQuery));

        $('input[type=file]').customFile();
    </script>

</body>
</html>