Return-Path: <open-iscsi+bncBAABBMGDW2UAMGQEUWOQ6AQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3c.google.com (mail-oa1-x3c.google.com [IPv6:2001:4860:4864:20::3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0497AB358
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:18 +0200 (CEST)
Received: by mail-oa1-x3c.google.com with SMTP id 586e51a60fabf-1d6c4b1a621sf3014858fac.3
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392177; cv=pass;
        d=google.com; s=arc-20160816;
        b=rUJAQCywBqP8ifk0HiMV/hKtkXe1bpVdzljOfHb5bN70mvyh6j/Oehv3wPAFhJufIk
         VPQD/g1wH2EYSr5yXZ2rdWVXIy+57ulvZRBDucMKSbvv1X3SxAN5WavEprA0nmrjkcEj
         fYCFWvq8J7ky5hIAzvgwOZDUSKI0A8/+N7aOVv0rLM5YDMnmhYfKITtKUpkCAM0p/SMX
         psqnPpr+g5nqNPv5iZRo0XPA0X4egkPuWDGEGUfiqeL+j5g5bfTZ5JsHRLoYprhwu6yV
         Cu2ugPg6n9M/udlcZt+/oH3JSGoRTzIsC68VNzZ1G0V5TQYvFYUVT5IKYYrMZTpAeQQD
         Fu0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9eJ+nZgxBrDFdwp2T5xRGmcEc1CCGYSAQPcmhSqu6MQ=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=s3mmh7uAX9v81bzUb9TFrbgGq1vsB0w/+pKpjM43xX48J0cCI5zXhavOEwegvIki5N
         I9dYADM4NSeZsFX18NtfkS4z4YbMhfA2/+I7OnM4NOYxg4/CrIqI966ANCiGGX0jAzru
         eohIOaHfcfS/ijTp+GFvZl6I06ZOiYShS5E7QcxFPUnqMSfNRuXWQTQo2EYtMLtwoa1r
         YhXf3cDsiOReOpeh1nqoENfpr0iksQRhrO/jx6wLrwOZd5+R4Eb9ZtAal29lXnWdtp+Q
         IdnezVD5IfP3BOeg8dSgIbQmt5aphPEwDiQD0lnf6Gg0gIxN6aZH+exKkQiQxXR4mmhN
         idFw==
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
        bh=9eJ+nZgxBrDFdwp2T5xRGmcEc1CCGYSAQPcmhSqu6MQ=;
        b=DlDQdPyhoHMWvfiWHI9okk9hxcErCDbWByk1CJCruyimJKc6gZSJrUTlnHxemKG3zG
         M+NcpVvevFovZq+FYmOTVwXU6pQFxCVKtrNzamFBfA4i83y7NoW0f4bdcVPxalq6ziU9
         XeDgErajg7d64oMEfOZ9SOeijKb87Gsb4cVXMhWefzjMyte4mBge0TbjFte3A5zJ6ZIv
         axmuhG4gh4fabHQ7DmTpaLuSceIFwjDyJYcoqckyDtZ9C4qMmXs+PPLV8ewMzWCxom2T
         ipJF9Aegs4KMZn1X6pwLD4gOdExqvJjwQKHMncdELP4NCsJQ1LJCV53tx60vvsAbfbt6
         0XJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392177; x=1695996977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9eJ+nZgxBrDFdwp2T5xRGmcEc1CCGYSAQPcmhSqu6MQ=;
        b=tzl9D0jl6HKsSy1pLJWaRn9wmLzet7ITJQLQVK1RK5oWw3uww/wNW6PEvrFoheoS75
         NJXa4CeVqKJ76XS0hRI/m4R0HwyWCjGPw6ePyHHHmfA/6zEHtqOUsXgfbUuicxEi+Lq1
         7zyIYgZhQSuK1qVdfyki96Q8bfkcXUP6zZKGa78a/ailcTFOtwhgo8ozQx4moOAq8VS+
         scGC6ZUXEesNLi6ocIk3QlIpZ9kSPUwutr9C+Svd7Zeb6tKS83TTkgrvcjwy4LIEXIAT
         gNdKu/b65wr0+DMD3IQ4xY3GevGBf2ETYAigOJO2Sx87c6Mco8q3E87+Z8nPcySG08Mc
         sYDw==
X-Gm-Message-State: AOJu0YxcB+EGh6EDRctijpviS5GPsBB1velfuWlya2sqS1zMKoHffGih
	UDqiS7BQM3S9ToKhcCiD+M4=
X-Google-Smtp-Source: AGHT+IEVC6kCoxsbvavdayb8gnHfxPsfS8qooiSUVccHC6vgZJYABpPwMlBv+plMg8JikjUOtTJT3w==
X-Received: by 2002:a05:6870:f28b:b0:1d6:97:bd7d with SMTP id u11-20020a056870f28b00b001d60097bd7dmr8955608oap.34.1695392177410;
        Fri, 22 Sep 2023 07:16:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:9120:b0:1c5:33df:eba7 with SMTP id
 o32-20020a056870912000b001c533dfeba7ls1406014oae.1.-pod-prod-07-us; Fri, 22
 Sep 2023 07:16:16 -0700 (PDT)
X-Received: by 2002:a05:6870:954d:b0:1d6:41c0:c9bf with SMTP id v13-20020a056870954d00b001d641c0c9bfmr3289890oal.5.1695392176150;
        Fri, 22 Sep 2023 07:16:16 -0700 (PDT)
Received: by 2002:a05:6808:8d8:b0:3a8:7c7d:6d23 with SMTP id 5614622812f47-3adee791c3emsb6e;
        Fri, 22 Sep 2023 02:29:40 -0700 (PDT)
X-Received: by 2002:a17:90b:4a41:b0:277:298:deae with SMTP id lb1-20020a17090b4a4100b002770298deaemr2715686pjb.11.1695374979719;
        Fri, 22 Sep 2023 02:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374979; cv=none;
        d=google.com; s=arc-20160816;
        b=WE7UYAFTl17UDCLXWsLDeuYCzRWA7hjoLlRdgFo8qIsu6WTmR2bCK3FTMwzS5wbr6l
         wcwgrhNk0zT0y1K8rLDKojpV88P9e+jUqwJOUKE7NNyXQq9WoNSe2vSGpKVgxcyL3C1G
         AmSB4uAXgGoM7myIbbbhksFx+yis5f/dpadZK5XI5JlsOGhg083sSKdAvBwt+nS3/VvU
         NEujejjXDezfpKQSoQ5bhCwGBVlylm4O9L72SAfW0sLlbl/+2qT7JLXKWpBGcIxt1fG3
         X6U0C9kdM1SkCEaiql7UosEYcwZ8CGIZYOJZ0c5uy9HHVKGRnhBbOFrpChXhMU0sacCs
         eNgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=4kwmRNrm0LWl6uig0Y+wLwqDq7mVcR2zaNlGLBJD/c4=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=JYZBcMQlSKBw0a8K05V6Q0xFC9WZ5y2/YSlhNvfOE4M1IGnaWjrI/t4J7ww0drEEnH
         nzUz59Kt8qWaix3tikxMNqrFPzxxqQZRdzS/Z7EBTY74e9cVQp8pncXgnxwzECLvDZP3
         CK9ZQ0yTnNpwb+8fPyQaglBb4AgS/NBrzvCS4SRPetugMmUHYEVhdLMWDFJvskDPTBnY
         yQN6akPiF4Lc49V24cLmoYG3D7zMcUGoAxKtnFk4utktk6zi9Yq+UHzVJZzjf/DY3mH5
         66WUj60m8eJBM9/4unkiZjDJpcn/Pou6rjt/x0TgzINciSQIIQZyPEhDmzVv4SJwI1OM
         XivQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id sr11-20020a17090b4e8b00b002765f40a121si469973pjb.1.2023.09.22.02.29.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RsRjS5Mw5zVk46;
	Fri, 22 Sep 2023 17:26:36 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:37 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 08/10] scsi: scsi_debug: Add new error injection reset lun failed
Date: Fri, 22 Sep 2023 17:29:04 +0800
Message-ID: <20230922092906.2645265-9-haowenchao2@huawei.com>
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

Add error injection type 3 to make scsi_debug_device_reset() return FAILED.
Fail abort command foramt:

  +--------+------+-------------------------------------------------------+
  | Column | Type | Description                                           |
  +--------+------+-------------------------------------------------------+
  |   1    |  u8  | Error type, fixed to 0x4                              |
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
will make the device return FAILED when try to reset lun with inquiry
command 10 times.
    error=/sys/kernel/debug/scsi_debug/0:0:0:1/error
    echo "0 -10 0xff" > ${error}
will make the device return FAILED when try to reset lun 10 times.

Usually we do not care about what command it is when trying to perform
reset LUN, so 0xff could be applied.

Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index 8a16cb9642a6..db8ab6cad078 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -295,6 +295,8 @@ enum sdebug_err_type {
 					/* with errors set in scsi_cmnd */
 	ERR_ABORT_CMD_FAILED	= 3,	/* control return FAILED from */
 					/* scsi_debug_abort() */
+	ERR_LUN_RESET_FAILED	= 4,	/* control return FAILED from */
+					/* scsi_debug_device_reseLUN_RESET_FAILEDt() */
 };
 
 struct sdebug_err_inject {
@@ -973,6 +975,7 @@ static int sdebug_error_show(struct seq_file *m, void *p)
 		switch (err->type) {
 		case ERR_TMOUT_CMD:
 		case ERR_ABORT_CMD_FAILED:
+		case ERR_LUN_RESET_FAILED:
 			seq_printf(m, "%d\t%d\t0x%x\n", err->type, err->cnt,
 				err->cmd);
 		break;
@@ -1035,6 +1038,7 @@ static ssize_t sdebug_error_write(struct file *file, const char __user *ubuf,
 	switch (inject_type) {
 	case ERR_TMOUT_CMD:
 	case ERR_ABORT_CMD_FAILED:
+	case ERR_LUN_RESET_FAILED:
 		if (sscanf(buf, "%d %d %hhx", &inject->type, &inject->cnt,
 			   &inject->cmd) != 3)
 			goto out_error;
@@ -5578,10 +5582,40 @@ static void scsi_debug_stop_all_queued(struct scsi_device *sdp)
 				scsi_debug_stop_all_queued_iter, sdp);
 }
 
+static int sdebug_fail_lun_reset(struct scsi_cmnd *cmnd)
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
+		if (err->type == ERR_LUN_RESET_FAILED &&
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
 static int scsi_debug_device_reset(struct scsi_cmnd *SCpnt)
 {
 	struct scsi_device *sdp = SCpnt->device;
 	struct sdebug_dev_info *devip = sdp->hostdata;
+	u8 *cmd = SCpnt->cmnd;
+	u8 opcode = cmd[0];
 
 	++num_dev_resets;
 
@@ -5592,6 +5626,11 @@ static int scsi_debug_device_reset(struct scsi_cmnd *SCpnt)
 	if (devip)
 		set_bit(SDEBUG_UA_POR, devip->uas_bm);
 
+	if (sdebug_fail_lun_reset(SCpnt)) {
+		scmd_printk(KERN_INFO, SCpnt, "fail lun reset 0x%x\n", opcode);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-9-haowenchao2%40huawei.com.
