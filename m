Return-Path: <open-iscsi+bncBAABBMGDW2UAMGQEUWOQ6AQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B91F47AB35A
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:18 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id 006d021491bc7-57b62f12069sf1820615eaf.3
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392177; cv=pass;
        d=google.com; s=arc-20160816;
        b=AllrWqHmbSjHtgnDhMJog94uVgqiqqCRvZSQB8PzF/TsxUY46FLL0sA0vPjOELOMYT
         Pk2Rb73nyWoHhVZTZjZr8VxMAbMG8CKzADaeuNL2JTgexcno2hADp3g7gufWnW3VyDxl
         oP/flHFWnhWWza7TnNfhO2RSO8SR4tI+FWYJUWjdha5JjtyLjFbABwd9Pd4NH4IElt1u
         EOTGIHFxZk/ilTNTcpK1o3Ibb1D6YErIVqR9dJ9rImCIX5B0x5mLLL2EGacwPRiKmX/1
         9rxf7vs7UDZBqi9rYRAa0jbqHzI3Ig9hhqmNzkUTPgVWTmLM5YnW9emr6S+/ixef1eS8
         bzcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=oGK68hIAT+IuYgC+XGibTyo4EnuZP/dmMy71everhxk=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=w3fhxz+kXBcfZQL/YexFwxGsHjGuO0LG7oUQiBuZZm8qGUaNi6aYI5myn6h7OTlIvz
         DhsnjMybzCXVE8iAbYwF1+1YzOVJQBShWawOnTzQXoOZw8IRk5cXTnhA/W4TYfw3GDj7
         l8A3Jvf8yv1Bw9e3+8xK58yyEd99F36V6y5LuLIIny+0wGGnc1ZVEhglFfFCit9Hdmb8
         tbJVmOavul+DfDyFOKUSdILCXe9jHKFXan+pEHtQcsOVjIYwbGAQnVjgPqe4kL/gr/Un
         TJgi4twFiULVeqi7OTfwYKEy/vXGr5gCNpRc6u21Xqmf2TlUfoZlXPYJpZ0EAqxJ4Bjg
         HkUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392177; x=1695996977; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oGK68hIAT+IuYgC+XGibTyo4EnuZP/dmMy71everhxk=;
        b=LGdserS5PjD9+xFzFtU3AUvsnU8Og4F11O3An3evdpoxGssZh5oqte5ojzth/oZrjM
         6A2odQ7Q+5rvOOMLEOw7mxBZX/XnVb4jtxeYyT4uiNUZddOUURD6KOKQ6NXYLKWZtzSZ
         //dWvvApIkc01LZYALRKkD8/CdNvglJZ+xPQ7BZruyugtxqx3gQQ8rf0c19d7ztO3AV5
         miWDP1AvfEB2c4xgpJiuglYFueiGfvir8mM8Hp5Syhzyseaag+h1I9fj/nEXNbD+s7ch
         ePA/Bt4iGJ+RQ5FCW+2K8jD0p+lDcAUrBxujZys4WnnZo0MOwPTqUYRpHzQbZoyZCC4x
         dG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392177; x=1695996977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oGK68hIAT+IuYgC+XGibTyo4EnuZP/dmMy71everhxk=;
        b=R23G8FoGQN9x5SsIDGT2o2HbVV8Fr+ghAXafx3OeemgR57dpUM37A8Fb6dY7O66jkD
         CuW+L8mzTk244KbAdUu2atPfaRKUcbih0oyg/XoK7D+YA9Pp18ZZHd6b7uNnPwAFb78f
         +913WSxonEIURhx0hqFRtA3JwM21hS79AT5dLsyHsqsPOOZP6YlVNf1RKSDfmc4crrDT
         zXdIViD1/Y9L1R6RG7wmqDQzUMWwXQI9bYL1v6Pi9OjVSWxJMgk2Ryr5hg6BukOviYLG
         2SIMSXyFz/eEpPcSt3OF8VFZ+3yAqLGdch0qMdqS8xacA3FmDxZ6SpbfBlx4usriKjwg
         /10g==
X-Gm-Message-State: AOJu0YykoB5pFGaJYbw3IgGuM22C9Aicw/wY/kUTDCZcHQYJjM0MX/or
	bjWYPmKsoVZ6C5Up6WR6WfE=
X-Google-Smtp-Source: AGHT+IHY09G2OkiPJsUeyqYYciVxXU55Iczrj0c1VUwGbjGxuIzgxLKfsbx9KIMmgz7SQ/Tzp0rplw==
X-Received: by 2002:a4a:dfa3:0:b0:573:2ac5:43b4 with SMTP id k3-20020a4adfa3000000b005732ac543b4mr9713356ook.5.1695392177625;
        Fri, 22 Sep 2023 07:16:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:4f0a:0:b0:57b:6325:be05 with SMTP id c10-20020a4a4f0a000000b0057b6325be05ls1080775oob.1.-pod-prod-02-us;
 Fri, 22 Sep 2023 07:16:16 -0700 (PDT)
X-Received: by 2002:a05:6808:211b:b0:3ae:1691:c59c with SMTP id r27-20020a056808211b00b003ae1691c59cmr1034703oiw.5.1695392176150;
        Fri, 22 Sep 2023 07:16:16 -0700 (PDT)
Received: by 2002:a05:620a:b83:b0:767:85a7:5f7c with SMTP id af79cd13be357-774180640c9ms85a;
        Fri, 22 Sep 2023 02:29:40 -0700 (PDT)
X-Received: by 2002:ac8:5f11:0:b0:405:402b:9d61 with SMTP id x17-20020ac85f11000000b00405402b9d61mr7429899qta.42.1695374979798;
        Fri, 22 Sep 2023 02:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374979; cv=none;
        d=google.com; s=arc-20160816;
        b=NZoZ3j4T8E2U+LW+4dmshDrBDj9RqwlPWiJnpx1zpYNd5QEC8EyRI9NzltK+JUOpEY
         v7TtHw4uExP/+M6yCvTvVxhRhI7gOE1dyhv8GqilbeSvbz6nHGjwlg1fHMusNHVyxHWv
         V5trOcAqye1k0kk5rw/3zaAKAOuTY2qD6oGPJyINdxT4X7E9YrUflE77xuRIEWeqXQTY
         gDeVPqmJRfkUMyhbjgSUDZkBBDv0q8jyNnqQ1F3Jw73yRiejOCZZXgpf37vONxJXGygy
         CyfiCt7Nvj150fySexouzV630SprHBeqNlUssfC6egJM3tLwArNM4QasvB03WHKHcH/N
         MMrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ohYDm2mSv3aoMbVy0elFn8CLLNU3TquHG1G+wR/c3NY=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=Cdn/1ZNFfW/fyssLV332ATzHO2LVKnF4DsVvKB8hHYbrbrSIdf4Lm1U9NeJi3FHKSX
         vFArWu5jARDXtdG+jpuygrorknRuy1EAKm5XLTouvnvKJugF87n3DNFonTCtQnGr+UJ6
         Eg3L1vg4tFf5v3/ZGYIv9U427YGIsvxuOGzHZIyyJiegc+Z1jTyuthAP80AWN9WiWgac
         M9/wNub11gR6VrYNiWBhPPolmPboRjSwQHYOQHrhAo5SLzfjoKj8JQuQVgUwwKzG6uEs
         vLS0pIcPYyJ86kMPp2qm7aMYj2dexE4XbHl2nVgr2TbnZOqxljwjUuIExA4yJVChKQ3I
         CJiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id r3-20020ac85c83000000b0040fda65c1e1si528628qta.3.2023.09.22.02.29.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RsRhY54jBzGpqB;
	Fri, 22 Sep 2023 17:25:49 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:36 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 07/10] scsi: scsi_debug: Add new error injection abort failed
Date: Fri, 22 Sep 2023 17:29:03 +0800
Message-ID: <20230922092906.2645265-8-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230922092906.2645265-1-haowenchao2@huawei.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Add error injection type 3 to make scsi_debug_abort() return FAILED.
Fail abort command foramt:

  +--------+------+-------------------------------------------------------+
  | Column | Type | Description                                           |
  +--------+------+-------------------------------------------------------+
  |   1    |  u8  | Error type, fixed to 0x3                              |
  +--------+------+-------------------------------------------------------+
  |   2    |  s32 | Error count                                           |
  |        |      |  0: this rule will be ignored                         |
  |        |      |  positive: the rule will always take effect           |
  |        |      |  negative: the rule takes effect n times where -n is  |
  |        |      |            the value given. Ignored after n times     |
  +--------+------+-------------------------------------------------------+
  |   3    |  x8  | SCSI command opcode, 0xff for all commands            |
  +--------+------+-------------------------------------------------------+

Examples:
    error=/sys/kernel/debug/scsi_debug/0:0:0:1/error
    echo "0 -10 0x12" > ${error}
will make the device return FAILED when abort inquiry command 10 times.

Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 40 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index fe1f7421f617..8a16cb9642a6 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -293,6 +293,8 @@ enum sdebug_err_type {
 	ERR_FAIL_CMD		= 2,	/* make specific scsi command's */
 					/* queuecmd return succeed but */
 					/* with errors set in scsi_cmnd */
+	ERR_ABORT_CMD_FAILED	= 3,	/* control return FAILED from */
+					/* scsi_debug_abort() */
 };
 
 struct sdebug_err_inject {
@@ -970,6 +972,7 @@ static int sdebug_error_show(struct seq_file *m, void *p)
 	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
 		switch (err->type) {
 		case ERR_TMOUT_CMD:
+		case ERR_ABORT_CMD_FAILED:
 			seq_printf(m, "%d\t%d\t0x%x\n", err->type, err->cnt,
 				err->cmd);
 		break;
@@ -1031,6 +1034,7 @@ static ssize_t sdebug_error_write(struct file *file, const char __user *ubuf,
 
 	switch (inject_type) {
 	case ERR_TMOUT_CMD:
+	case ERR_ABORT_CMD_FAILED:
 		if (sscanf(buf, "%d %d %hhx", &inject->type, &inject->cnt,
 			   &inject->cmd) != 3)
 			goto out_error;
@@ -5504,9 +5508,39 @@ static void stop_all_queued(void)
 	mutex_unlock(&sdebug_host_list_mutex);
 }
 
+static int sdebug_fail_abort(struct scsi_cmnd *cmnd)
+{
+	struct scsi_device *sdp = cmnd->device;
+	struct sdebug_dev_info *devip = (struct sdebug_dev_info *)sdp->hostdata;
+	struct sdebug_err_inject *err;
+	unsigned char *cmd = cmnd->cmnd;
+	int ret = 0;
+
+	if (devip == NULL)
+		return 0;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
+		if (err->type == ERR_ABORT_CMD_FAILED &&
+		    (err->cmd == cmd[0] || err->cmd == 0xff)) {
+			ret = !!err->cnt;
+			if (err->cnt < 0)
+				err->cnt++;
+
+			rcu_read_unlock();
+			return ret;
+		}
+	}
+	rcu_read_unlock();
+
+	return 0;
+}
+
 static int scsi_debug_abort(struct scsi_cmnd *SCpnt)
 {
 	bool ok = scsi_debug_abort_cmnd(SCpnt);
+	u8 *cmd = SCpnt->cmnd;
+	u8 opcode = cmd[0];
 
 	++num_aborts;
 
@@ -5515,6 +5549,12 @@ static int scsi_debug_abort(struct scsi_cmnd *SCpnt)
 			    "%s: command%s found\n", __func__,
 			    ok ? "" : " not");
 
+	if (sdebug_fail_abort(SCpnt)) {
+		scmd_printk(KERN_INFO, SCpnt, "fail abort command 0x%x\n",
+			    opcode);
+		return FAILED;
+	}
+
 	return SUCCESS;
 }
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-8-haowenchao2%40huawei.com.
