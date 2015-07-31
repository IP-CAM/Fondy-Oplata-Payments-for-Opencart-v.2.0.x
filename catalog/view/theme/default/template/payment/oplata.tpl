<form action="<?php echo $action ?>" method="post" id="payments">
    <?php
    foreach ($oplata_args as $k => $v) {
        echo "<input type=\"hidden\" name=\"{$k}\" value=\"{$v}\" />";
    }
    ?>
</form>
<div class="buttons">
    <div class="pull-right">
        <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" data-loading-text="<?php echo $text_loading; ?>" />
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $("#button-confirm").click(function(event){
            $.ajax({
                type: 'GET',
                url: 'index.php?route=payment/oplata/confirm',
                success: function () {
                    $('#payments').submit();
                }
            });
            return false;
        });
    });
</script>