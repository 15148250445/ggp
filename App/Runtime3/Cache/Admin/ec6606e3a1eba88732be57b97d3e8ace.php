<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站提示</title>
</head>
<body>
<script language="javascript" src="/Public/js/jquery-1.7.2.min.js"></script>
<script language="javascript" src="/Public/js/alert.js"></script>

<script type="text/javascript">
var jurl = "<?php echo($jumpUrl); ?>";
<?php if(isset($message)): ?>if(jurl!="")
	   msgDalog("<?php echo($message); ?>","<?php echo($jumpUrl); ?>",1);
    else
	   msgDalog("<?php echo($message); ?>","",2);
<?php else: ?>
	if(jurl!="")
	   msgDalog("<?php echo($error); ?>","<?php echo($jumpUrl); ?>",1);
    else
	   msgDalog("<?php echo($error); ?>","",2);<?php endif; ?>
</script>

</body>
</html>