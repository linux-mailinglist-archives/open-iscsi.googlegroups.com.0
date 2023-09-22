Return-Path: <open-iscsi+bncBAABBNWDW2UAMGQEFM5K7PA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A59947AB35E
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:24 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 46e09a7af769-6bf0c48641csf2851530a34.3
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392183; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFEyj94FXx3Dx64UmMbg+mPYYfx6HMXFMoS6NQoVFd9hb0armhfdH+2QcsCjeeRxua
         SbaDXdpVaNB2c8gE5/xNotomBbJD3+ncl4hAfguqwKNp0HiLw97E3UaJqW7KyCd/k9sm
         aeaU4EkJDkw4DighX0R9k0rgGE84qfkG1mvwKTx4QjJaYwjGc7nSUgjz2+Ye+ihVH5HN
         CKrnFaZVBXadJA2TvrqT2jsuQzEC6Uo27FmGXYhAnloNaaY/5hnk83cnZ+50zTk5N6uZ
         PTK6QWhiTu+giCL1n+SNDtBnVpFTmmI55Titbq063i2JZcJJFs766B2n+NjeRk34FvWh
         4LRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=QutGbk1BcYTo7LE5/6ZGKB6u/3bQ9EAtIjKF4ta96ws=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=CD0vnpaTR0H+u0/n4IdA6H2CHVz+3ZnTi51cC/SVZc8lr+jLFVHW2WTFU0luv+XLAS
         XxGwW/2895WxSnxL0h9MXzBmObKJPhsB0TviRSth/+kaKKUpZLYeC9MqReM6+a9mAW6z
         ff4JLF3A71Oj4tYnjWZjicdmu8fqvjCYaukRNnu9zy+dtHec5al9tSrmlv/uPcDyZL9C
         lzDbBsTWy89FhyKq7CRwrJa1yQihxdshI959kKxImlXQwlCU9h8+/tQHM6bfV7dvJWCl
         v1w8jgRPA7PqH6mhGn56ep/MjWgqNH7pnC4+ritY65oeBLomGGU/CpF6rSebsvInlgo3
         nOFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392183; x=1695996983; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QutGbk1BcYTo7LE5/6ZGKB6u/3bQ9EAtIjKF4ta96ws=;
        b=D7OLOFeB3UqFKo/qWID+l9vMtysGUPXzBkYwMK+Jj0PPfUayRUlWtvVv+rEjmDP96b
         m9lDit8aovKid4AOdNUi6TWUe5OImnpdyUFv4WYIXLiEE6u6wBmw2YygCIr3dBR4ce9p
         eKIytwi3N4JrMdj2sDX0zuZeFWgkkTW8HMAMBIaJQBN99xcbA8gM2cUYlfg7K+/9tuPW
         X7NZspsvyEKq4oaFtIdGJSxlYqSnylLEIBSH24H68AbO3fMm7dttQYGeAzKHZQ5GDrGn
         jWmZIR+NWNxZYbrBHVGIy2+Ld4NDHyXeppZeid4uckdw1/yKq4d18+zy4N3GZgCwJsjK
         LIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392183; x=1695996983;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QutGbk1BcYTo7LE5/6ZGKB6u/3bQ9EAtIjKF4ta96ws=;
        b=QM5MtDRqnkjrqdCnqjK60XGTGF7yW0OLAzBW+JJPkn2B9EC/7FINKB42gurakjps63
         Hs6VSOlbVBfPPriB7wHqsXLFhNu//3v+k6hvpTegNyxLoD+H+oNmQCtawzNIh0zjrUu4
         XKtkxV5RCL//efxpP7xIxM/aUqfb9Zu3ywJbdhCq2KkEGG6DZnTqopSViMMqHYslk2Wg
         WZziyyhX62S4CXQpl0w6TarDMi5fCImbDDfwae8anWAp+IoDuuWhjVmoMsjZ1VMPhA+A
         J15IWPnUSdCaS9rQr3csd9OxgQeiRvX8rYIISC0TllJ4ytEJB1dgHhA04LgL4d51Yn3T
         gyAw==
X-Gm-Message-State: AOJu0Yxuc/u3qVfY64OOZwVHcaANBr9+/9dOyRT9SsUKDVyyIguiAknT
	xAz5D8tbz72o16umdDqaE50=
X-Google-Smtp-Source: AGHT+IF+Esci2mO7AQmyNENyKyeFFexUUKdjgWi8K8GsvCb63XWQyT9kFvWqUCXPw/vGDugqw88lcQ==
X-Received: by 2002:a9d:7389:0:b0:6b8:6f94:d3a2 with SMTP id j9-20020a9d7389000000b006b86f94d3a2mr9330845otk.25.1695392183526;
        Fri, 22 Sep 2023 07:16:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:e9f5:0:b0:57b:5ebc:9b7b with SMTP id w21-20020a4ae9f5000000b0057b5ebc9b7bls1187832ooc.0.-pod-prod-01-us;
 Fri, 22 Sep 2023 07:16:22 -0700 (PDT)
X-Received: by 2002:a05:6808:219d:b0:3a7:5f99:9fe1 with SMTP id be29-20020a056808219d00b003a75f999fe1mr4322738oib.2.1695392182233;
        Fri, 22 Sep 2023 07:16:22 -0700 (PDT)
Received: by 2002:a05:690c:c:b0:594:e68b:77ea with SMTP id 00721157ae682-59ee9a34c99ms7b3;
        Fri, 22 Sep 2023 02:30:10 -0700 (PDT)
X-Received: by 2002:a25:76d3:0:b0:d0f:846c:ef7b with SMTP id r202-20020a2576d3000000b00d0f846cef7bmr8089333ybc.17.1695375008540;
        Fri, 22 Sep 2023 02:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375008; cv=none;
        d=google.com; s=arc-20160816;
        b=VzGK3zphouSLMrylQUVSA+JhG1ktjCFIJ8ReA8ashCQEkE2g6EemByZS3RHN2DDGUT
         nuZhO9PBdTzbfeaOXz9dPxTadcQJ30koomWiYDWGWM+ErkCrEZQbl9MHnZnE3rkEjNcw
         BSdbNpqLn7f75kE3uVipstH0LcpGAZjexkHsWTstSMwdtkelHI6PptA0QTpblx4tmk/s
         C758zD8uFM/hYdZJWrbVONa4t0fYp/M9XrT2GOCfphe1D1y0i+drX+DHVZ8815P9P9+V
         avGzNba+hw51fXkBZX91xEohU7O06maQ7ZMcyL/eptaLtbA8HoYKZoYUVg3pQKKRgLNU
         H0Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=qWv5LonYmPiD7WUth0ZsecslzGM0F1X9yLhVUO+Zb3Q=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=YeI6RemN5mI2dLorBEgCHl4oNV/+wKgFwrpm1BU2q+B64P4bitQmH/fGB4fNZOiPig
         qT7GS8hwQOcQUtfvkLKsgHeqNdFhEQMoZ+JyIT1eyNA9B6BXNcIOjTGhbE2X80hhgYAF
         Dyzdi9DrisvjwDVypMRRhSm8bEhuA+eDkWa3UA5lDPrRH2ZptcrEs1TeQ0p/fnWdfO9v
         iiiovsBMFyyfcDG/+X/PwGpkmmjNOQ7UPvVomAC5ZiNVCiVsZHItImx28hESGcGhuTWA
         GyTOc2T8mXbgAeBFb5XVY2GlEumtm0LIpgFvOeOt7YXsudasIq6EmiKCmBsLuE2vzW/X
         dwXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id p69-20020a257448000000b00d780ceaf524si455881ybc.2.2023.09.22.02.30.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RsRgz1mgCztSCF;
	Fri, 22 Sep 2023 17:25:19 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:34 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 05/10] scsi: scsi_debug: Return failed value if the error is injected
Date: Fri, 22 Sep 2023 17:29:01 +0800
Message-ID: <20230922092906.2645265-6-haowenchao2@huawei.com>
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
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as
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

If a fail queuecommand error is injected, return the failed value defined
in the rule from queuecommand.

Make queuecommand return format:
  +--------+------+-------------------------------------------------------+
  | Column | Type | Description                                           |
  +--------+------+-------------------------------------------------------+
  |   1    |  u8  | Error type, fixed to 0x1                              |
  +--------+------+-------------------------------------------------------+
  |   2    |  s32 | Error count                                           |
  |        |      |  0: this rule will be ignored                         |
  |        |      |  positive: the rule will always take effect           |
  |        |      |  negative: the rule takes effect n times where -n is  |
  |        |      |            the value given. Ignored after n times     |
  +--------+------+-------------------------------------------------------+
  |   3    |  x8  | SCSI command opcode, 0xff for all commands            |
  +--------+------+-------------------------------------------------------+
  |   4    |  x32 | The queuecommand() return value we want               |
  +--------+------+-------------------------------------------------------+

Examples:
    error=/sys/kernel/debug/scsi_debug/0:0:0:1/error
    echo "1 1 0x12 0x1055" > ${error}
will make each INQUIRY command sent to that device return
0x1055 (SCSI_MLQUEUE_HOST_BUSY).

Acked-by: Douglas Gilbert <dgilbert@interlog.com>
Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index 785ad5e5b4a4..dea40d983155 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -7759,6 +7759,34 @@ static int sdebug_timeout_cmd(struct scsi_cmnd *cmnd)
 	return 0;
 }
 
+static int sdebug_fail_queue_cmd(struct scsi_cmnd *cmnd)
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
+		if (err->type == ERR_FAIL_QUEUE_CMD &&
+		    (err->cmd == cmd[0] || err->cmd == 0xff)) {
+			ret = err->cnt ? err->queuecmd_ret : 0;
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
 static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 				   struct scsi_cmnd *scp)
 {
@@ -7778,6 +7806,7 @@ static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 	u8 opcode = cmd[0];
 	bool has_wlun_rl;
 	bool inject_now;
+	int ret = 0;
 
 	scsi_set_resid(scp, 0);
 	if (sdebug_statistics) {
@@ -7823,6 +7852,13 @@ static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 		return 0;
 	}
 
+	ret = sdebug_fail_queue_cmd(scp);
+	if (ret) {
+		scmd_printk(KERN_INFO, scp, "fail queue command 0x%x with 0x%x\n",
+				opcode, ret);
+		return ret;
+	}
+
 	if (unlikely(inject_now && !atomic_read(&sdeb_inject_pending)))
 		atomic_set(&sdeb_inject_pending, 1);
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-6-haowenchao2%40huawei.com.
