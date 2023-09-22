Return-Path: <open-iscsi+bncBAABBMGDW2UAMGQEUWOQ6AQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E8D7AB357
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:18 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 46e09a7af769-6c47124a731sf2594551a34.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392177; cv=pass;
        d=google.com; s=arc-20160816;
        b=d5Kw6E6dUC6rY2iql7TTmKxGmHLKraobeb0uxfXT9j47EoWjOPVPn/1TWneofuDBlF
         6/iZAC47WmB71675WW14G25QVcRAg6T8/1XX0mywl/0z2okUyxSK45Lwwy6+gX9EywGN
         j81+Jx/gi1KqNHr+Zrt6TgRMkAHMSfjsPVa8i+ZdqKTFa2Gm5dC3Zp+Iqw4Os45paHqK
         fxXmTwlNs0T8FzBkczneLRsBau2xCU61w6u2XoPB2ZbJl2iRKEHxN/XukH9cUDClJmom
         NGW5TyquNRE0y+bnRryYaGMBS25zdHj8S9LlFUoi0VaIdlTf7Qlp8ffJHdBbQp446cxi
         z+9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5KntrEcPwfIyCQakufUUREdLR3kjiOFfccHi7SXY6e4=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=MGelPG735zN7geKwMbC50p8gEC7Y4JV16qvTp1mauNSY94+KxfRv03g8DhgJkI5uhO
         +nIO6sSq+ja1PuDpRXaLwHM3gjDuYEzhVz7XtyK5MIfDbGKfwPw2Vch96wsfUAkFoiKp
         fkTcblW07Wg05ij2v+gpn/gFT+IRAigynYjJvB3cwSiYaaZCToHDvCrj3NuB8SyAoFfg
         U2K1ZMlWP8TsZO4cqIAhT3RfKO2k7WDCLCBM0vVU8KvwCZsIAbxq4glyoNWsRm4baPqU
         /uKfbJOqqFJwwkGiBLVGw3jnlvwLbilCPrgEPTZxQwbC8/pkqryzRZ6FHE7WDlWVUffD
         hizw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392177; x=1695996977; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5KntrEcPwfIyCQakufUUREdLR3kjiOFfccHi7SXY6e4=;
        b=TCLjn171UOnrSZ4k73Hj/uLq5oxhshPDX4VdrBL9MH4ceqt1ebql7TEMq95k+ZlsxY
         cqaumIy1ABQeyKGeuc+eGJjTDyBXHx/ALEZ5G9YeXZZyF3A5WYalxCJrQxSt0v3B3SJD
         SeNzd6vOkC5Zuei6mlrSkRFNLR/zs/Na67L+xh0o1magNlz1Ik/N3eoke8xxY7rd6iAl
         d+kNTOfaXRfRlWYM1xPp4wUDMX/D6ICt2oVoudjjKVpkhrOJ68W2dcpTnJ0QWz7dfFoP
         XweqNV/qcg2SCGGGvLAG5e5xHFFmzYiYswCYLTWqrfT51VlF398aAk+uoLiXsUxkbG+X
         SR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392177; x=1695996977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5KntrEcPwfIyCQakufUUREdLR3kjiOFfccHi7SXY6e4=;
        b=JB1nrJsOodS+XwKG1PIv6O4fqbB2mfs0DJonJfgmgmLXWR82vBMcZ1bOHHLVouWj1e
         S0KDjkXWYcJCo7IiLiR9JK6W04kXTitnojA7Pw/9wWP+N8Iw7EZaL2NBfoZuQ8ydvj7u
         MDmmdu5uUl3kk9WjiXSJJH5JZwh00LZz2KFHsYTCdkcWI6yuzQ0WXG8VhJyR2WSwC5JM
         V7YjTEaE4qKoFdRodoi6JmbIWJd7wdBIDGzNzO6EJvd/0XfTNQkqRTKqXXiECrLNQAf6
         F9IpXCTXaTxcEdyRlgJOWMnA1PTuSTrcVrdNQ0kL5lQZh3ws98A2X3MUiDhXXCHP0xhA
         rnoQ==
X-Gm-Message-State: AOJu0YyQSP/UT/q5OIJ3qGXCs08bzXjfiPcSI45Lnqvp4Ux1Iih2WJFU
	vmFyDKzNVRETMlLGBocCdOE=
X-Google-Smtp-Source: AGHT+IFudSEAE1PFOBB8y6SCKK/13PJJj/qmt3olQZSSDyj2ibsD7h8Qah0qTuBGvF+bsGVaTFbSkQ==
X-Received: by 2002:a9d:7849:0:b0:6b9:9288:613c with SMTP id c9-20020a9d7849000000b006b99288613cmr8992419otm.13.1695392177372;
        Fri, 22 Sep 2023 07:16:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:4f0a:0:b0:57b:6325:be05 with SMTP id c10-20020a4a4f0a000000b0057b6325be05ls1080774oob.1.-pod-prod-02-us;
 Fri, 22 Sep 2023 07:16:16 -0700 (PDT)
X-Received: by 2002:a05:6808:1485:b0:3ad:aeed:7ed9 with SMTP id e5-20020a056808148500b003adaeed7ed9mr4035875oiw.2.1695392176153;
        Fri, 22 Sep 2023 07:16:16 -0700 (PDT)
Received: by 2002:a05:6808:11c3:b0:3a8:7920:a17f with SMTP id 5614622812f47-3adeec4b398msb6e;
        Fri, 22 Sep 2023 02:29:39 -0700 (PDT)
X-Received: by 2002:a4a:d1b6:0:b0:57b:54c1:3137 with SMTP id z22-20020a4ad1b6000000b0057b54c13137mr3866923oor.5.1695374978719;
        Fri, 22 Sep 2023 02:29:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374978; cv=none;
        d=google.com; s=arc-20160816;
        b=JOTj3l0DINh0hc8A7yG6Q+9SBkiO0QoypR8wzhUM+TBe5hhu58RR4PZ+sZuHgxTEbk
         2D+NluUXVUTY3xOjX5ZNI1Oo8oVfMTzDjhdixq57NBRdqA5KkvpNzGkf2XabS+J400ve
         9iIhBUKqkMVQ5Zlkpyml6f3gY0DlCXHjRHhHzq55C+9l0ywsZuSil4Lg+67wrLTb6k4D
         PvaM4Vi7AIoSB2PbZ/UDn9LVYsZEjB3hkwGQLKzyLXUi7CdeITDOcBuofp11EJ+yQM0C
         hSVK9kuWvMoTuThlLeAwE1F+UXWbA+HH6JTglI2ECFP3y24KR3unIKc9oFDad2ipJ43B
         3q2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=JULaAYT20Ip8VFivaDNlJVIp9U2+m0R6atUprRfo4yQ=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=stOU3wGx/3QpP7sz1T2tCeTqspceCKpCBFNIndVmncR9cFWik+Uq60vEFaRjAnH6Xy
         GEpXIi9nl14d3ocwww7E1DRrzAmYz7gpcorH/M/F0+8NtEDj6dxHY2pkkUHT5+56AcKg
         J7STpcEMwD8jAvyAxiuzQjbEbIgmMDBac5P4KoKvDNO1RaqxVagBVDzOYUAfxMvXLP/v
         karjpW9exNIlXSrRNsksXfZyWQCfsKii5AhJJ0mcbbV/3gXHa8bKhKqGuVb+DjL6rtmV
         Ez1AexMNci80uXtX617qOVzOgN4EHXDrd59kVJ0DCvISiGe7GI53JiBDz2sl8VAWX+z6
         XVnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id m25-20020a05683026d900b006bb093f67cdsi438963otu.1.2023.09.22.02.29.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.57])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4RsRhl168XzMlmS;
	Fri, 22 Sep 2023 17:25:59 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:35 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 06/10] scsi: scsi_debug: set command's result and sense data if the error is injected
Date: Fri, 22 Sep 2023 17:29:02 +0800
Message-ID: <20230922092906.2645265-7-haowenchao2@huawei.com>
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
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as
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

If a fail commnd error is injected, set the command's status and sense
data then finish this scsi command.

Set SCSI command's status and sense data format:
  +--------+------+-------------------------------------------------------+
  | Column | Type | Description                                           |
  +--------+------+-------------------------------------------------------+
  |   1    |  u8  | Error type, fixed to 0x2                              |
  +--------+------+-------------------------------------------------------+
  |   2    |  s32 | Error Count                                           |
  |        |      |  0: the rule will be ignored                          |
  |        |      |  positive: the rule will always take effect           |
  |        |      |  negative: the rule takes effect n times where -n is  |
  |        |      |            the value given. Ignored after n times     |
  +--------+------+-------------------------------------------------------+
  |   3    |  x8  | SCSI command opcode, 0xff for all commands            |
  +--------+------+-------------------------------------------------------+
  |   4    |  x8  | Host byte in scsi_cmd::status                         |
  |        |      | [scsi_cmd::status has 32 bits holding these 3 bytes]  |
  +--------+------+-------------------------------------------------------+
  |   5    |  x8  | Driver byte in scsi_cmd::status                       |
  +--------+------+-------------------------------------------------------+
  |   6    |  x8  | SCSI Status byte in scsi_cmd::status                  |
  +--------+------+-------------------------------------------------------+
  |   7    |  x8  | SCSI Sense Key in scsi_cmnd                           |
  +--------+------+-------------------------------------------------------+
  |   8    |  x8  | SCSI ASC in scsi_cmnd                                 |
  +--------+------+-------------------------------------------------------+
  |   9    |  x8  | SCSI ASCQ in scsi_cmnd                                |
  +--------+------+-------------------------------------------------------+
Examples:
    error=/sys/kernel/debug/scsi_debug/0:0:0:1/error
    echo "2 -10 0x88 0 0 0x2 0x3 0x11 0x0" >${error}
will make device's read command return with media error with additional
sense of "Unrecovered read error" (UNC):

Acked-by: Douglas Gilbert <dgilbert@interlog.com>
Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 53 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index dea40d983155..fe1f7421f617 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -7787,6 +7787,48 @@ static int sdebug_fail_queue_cmd(struct scsi_cmnd *cmnd)
 	return 0;
 }
 
+static int sdebug_fail_cmd(struct scsi_cmnd *cmnd, int *retval,
+			   struct sdebug_err_inject *info)
+{
+	struct scsi_device *sdp = cmnd->device;
+	struct sdebug_dev_info *devip = (struct sdebug_dev_info *)sdp->hostdata;
+	struct sdebug_err_inject *err;
+	unsigned char *cmd = cmnd->cmnd;
+	int ret = 0;
+	int result;
+
+	if (devip == NULL)
+		return 0;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
+		if (err->type == ERR_FAIL_CMD &&
+		    (err->cmd == cmd[0] || err->cmd == 0xff)) {
+			if (!err->cnt) {
+				rcu_read_unlock();
+				return 0;
+			}
+
+			ret = !!err->cnt;
+			rcu_read_unlock();
+			goto out_handle;
+		}
+	}
+	rcu_read_unlock();
+
+	return 0;
+
+out_handle:
+	if (err->cnt < 0)
+		err->cnt++;
+	mk_sense_buffer(cmnd, err->sense_key, err->asc, err->asq);
+	result = err->status_byte | err->host_byte << 16 | err->driver_byte << 24;
+	*info = *err;
+	*retval = schedule_resp(cmnd, devip, result, NULL, 0, 0);
+
+	return ret;
+}
+
 static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 				   struct scsi_cmnd *scp)
 {
@@ -7807,6 +7849,7 @@ static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 	bool has_wlun_rl;
 	bool inject_now;
 	int ret = 0;
+	struct sdebug_err_inject err;
 
 	scsi_set_resid(scp, 0);
 	if (sdebug_statistics) {
@@ -7859,6 +7902,16 @@ static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 		return ret;
 	}
 
+	if (sdebug_fail_cmd(scp, &ret, &err)) {
+		scmd_printk(KERN_INFO, scp,
+			"fail command 0x%x with hostbyte=0x%x, "
+			"driverbyte=0x%x, statusbyte=0x%x, "
+			"sense_key=0x%x, asc=0x%x, asq=0x%x\n",
+			opcode, err.host_byte, err.driver_byte,
+			err.status_byte, err.sense_key, err.asc, err.asq);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-7-haowenchao2%40huawei.com.
