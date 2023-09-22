Return-Path: <open-iscsi+bncBAABBJ6DW2UAMGQEWHJWYLA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9032F7AB354
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:10 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id 006d021491bc7-57b78a20341sf833665eaf.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392169; cv=pass;
        d=google.com; s=arc-20160816;
        b=fsqPm68lFnL1LAOJmR1A2aPGgv0lt4w90JMkD4YoiHa8ph8uEzV2hDmEqipGzE5Dxh
         5Bb3qHgrmcA5xl+SN8ohad6dth2BLxjCdgLSyPwlloqEW0M7b1t+zKvMqZPj4LDDdGe5
         3I8XizIVqTQ+p8gX2xrMhTyLsaSbE83pJHO/RyCIQKwEx3LijkzNUBgCZqDNTvvHwvKj
         XOGY2W4sTF+DCge3KskjZsdKSNK523YLSK/09DrIdEL3xotKg8whZzMHGfiefygJBhi9
         T4bxDdA56OMxji4cGf/vCiDyYdMvIdRx+fi+RgVYG7NylwFc/H9uifDOD1XCnCfmD1x+
         qm9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=d5tBFIJmccREcObXxxdJayPM7UH6f3pNrpAE8AK4wVc=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=bqXMgvvUhmDKjAYjNKR1aBEziZlvIZiCCcOoKWgttSXMc6qqDvO0UJRiS/dADVzhWi
         R4vOyVSSJ79jSJ3xuScIgMTLYr8oAHW6Is4uxKYyxUjK40XUYnqmy0JnKTE4ZeD1UjlF
         xYjWv1wzci/+jclbBMjaOCpX8rMIjNMa9OouOazPx//0wq+9vUAlVcfWAd434fbVoOgv
         rHiTubmymdKsbKSc0FMoTvEeDta7QXR15u6idwWSzydorkistwfzeKRUmXsERBwaJ8GO
         zOGjPePHoimhnSxqb09NL3CGVufIzUng35Yz8UXWODmRAXif00fBtupGUEOYKN8yxx1F
         +aNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392169; x=1695996969; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d5tBFIJmccREcObXxxdJayPM7UH6f3pNrpAE8AK4wVc=;
        b=fuQaeZAJAO+SL3yT28vrIPIjLxzjbxmoTaahpE1zvlsC9+4SkUX9+T2Xq2jOtNudo0
         vj/RKlwlclljarXRqJpwiU9zdFjBKTa5yW8I4sUKJNR4vnwYqVGJ4B93LflIcIp1Rm2O
         1mj9qOmvl1DpQ94dPw6RlgImRj97ApxgC2egjnZWsf884ivS8lJjOJEL+62qZWc5EvGn
         HrBEBvTVYpKp6gwTkuqSvnc0YcB1yFxAe5kFx0tSTuqUXq+iOVGd2bs86cb9d7w77nmP
         5wYbPBcRhCkwQEyDAaNjLMkXP2zL2luKhQdozn40WZxXDThu2AzkIrUMbKyn25yRjG+f
         +peQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392169; x=1695996969;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d5tBFIJmccREcObXxxdJayPM7UH6f3pNrpAE8AK4wVc=;
        b=jd9CXMQ9LxDTLcTh8iu6aziE/olsR2QpSqZD4NlOY4M9ZjMRyOAkttdHImcXyaT9HD
         OiKA5WzyWG97JttNPiYTmYhjGIOzsugAXXGnA5+z1uzqXwlud4xv35Lc4koe/xYOHepv
         N5GEa0oXb01D2n7oB4j/Xh+5d4QbvZkvpHrvuLABoftVe6lWeq3G5X45bu42lgx5A9AZ
         rOGi2RI166lMKOVMoGfsOYlJs0sjqDGf8sDlUuWvkZq/PS+vPxfi6MbXaBdMJkTKcSTp
         A9abKzD0bl6Z9KwUroRnNJYRl33vNIaA01e0gj2/YEZXzot+iVh2h0xGBCw8PmJ6H/JK
         B0eQ==
X-Gm-Message-State: AOJu0YzaP+HfUK0KWJ4Ps0iIhWlCwBJqylB1QxjHz9k5aze3KfrV9oJq
	t2nQPf5u7DbYHP2qwBYZwr0=
X-Google-Smtp-Source: AGHT+IEcMpZ6cuTIM3fWZi6tIkmHZlBbyIlOMkt+O8xYBe8SbcvjNVoTwHsFc89VFwg/kCaAk0uJiA==
X-Received: by 2002:a4a:ea10:0:b0:57b:6c85:96f with SMTP id x16-20020a4aea10000000b0057b6c85096fmr3402190ood.0.1695392169108;
        Fri, 22 Sep 2023 07:16:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:d651:0:b0:576:22ef:e4a2 with SMTP id y17-20020a4ad651000000b0057622efe4a2ls794785oos.2.-pod-prod-05-us;
 Fri, 22 Sep 2023 07:16:07 -0700 (PDT)
X-Received: by 2002:a9d:7d0c:0:b0:6b9:5156:a493 with SMTP id v12-20020a9d7d0c000000b006b95156a493mr2573467otn.4.1695392167562;
        Fri, 22 Sep 2023 07:16:07 -0700 (PDT)
Received: by 2002:a05:6808:8d8:b0:3a8:7c7d:6d23 with SMTP id 5614622812f47-3adee791c3emsb6e;
        Fri, 22 Sep 2023 02:29:37 -0700 (PDT)
X-Received: by 2002:a05:6830:4683:b0:6c4:b0fa:12c2 with SMTP id ay3-20020a056830468300b006c4b0fa12c2mr2151436otb.19.1695374977470;
        Fri, 22 Sep 2023 02:29:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374977; cv=none;
        d=google.com; s=arc-20160816;
        b=yaNVs7Hs/2f355P+aWTDkGWFcp8aN+B2YEy0Go61VunkOkJVUx2U05PcvkHJFP1V9v
         1AJK2WKong6bsn/SCIrqv9n5UNbUhJP4TfwH9Ub5trk2kG+6TXfa4YffYYf8nyMECrQA
         WX7NwtmsCV9diW63HSxT0pPP9YFcKQFUPjNz5K6Du7Ept8uhtZ5vZuKnkyhrin4HPct3
         uhHaWs6SCj+lt6EARWYog6IP/+YRiVbzL1eA3fN6pEZKl448LKaShU52dSmukTTsK0dt
         Plm5j5KjrO9ASDGbJRgYQKyOVeuM9h5zMx4vjE0X0Hr6wPARN8jiHWp3aY3ItdzppdfO
         xTOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tnp7C2Py8vCPoe4eoheh5UWAyaPwzxtuqHIYfIZl5QQ=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=kbvzC2kVmhHdcDgFi5MyyPlLmyKOePJlQ4Ej6UKB20PWCJImH60eYfFUM583qlvcoH
         hnZ0eKEpqBF68JxVNU+pICFsJFIwpnnJW10m4DwAYrQSOnFC3dCxAh5OUsfTZ2FYqpke
         3DwpkkPC/I57PC9un1L+oFRen91BKipJStZRP7izleAvW6XwBdxopIlezBUeGXqL+q0v
         zwzXn9wQuOn9DcrDq+HtQx6W07DjRSUB+tJYWse3ko2PzeX+UkIO87m8FaxvssM/Pqoy
         V5h+JHuXJylMRC4A0BzZLSAx27hNN+WvDSqR5+VDrLz6yKkqPouawAylyGsTyJDeu81Y
         I4WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id cj23-20020a056820221700b0056cff34fecesi467445oob.0.2023.09.22.02.29.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.55])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4RsRkQ40kfz15NRJ;
	Fri, 22 Sep 2023 17:27:26 +0800 (CST)
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
Subject: [PATCH v5 04/10] scsi: scsi_debug: timeout command if the error is injected
Date: Fri, 22 Sep 2023 17:29:00 +0800
Message-ID: <20230922092906.2645265-5-haowenchao2@huawei.com>
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
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as
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

If a timeout error is injected, return 0 from scsi_debug_queuecommand to
make the command timeout.

Timeout SCSI command format:
  +--------+------+-------------------------------------------------------+
  | Column | Type | Description                                           |
  +--------+------+-------------------------------------------------------+
  |   1    |  u8  | Error type, fixed to 0x0                              |
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
will make the device's inquiry command timeout 10 times.
    echo "0 1 0x12" > ${error}
will make the device's inquiry timeout each time it is invoked on this
device.

Acked-by: Douglas Gilbert <dgilbert@interlog.com>
Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index 6235e828c430..785ad5e5b4a4 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -7731,6 +7731,34 @@ static int sdebug_blk_mq_poll(struct Scsi_Host *shost, unsigned int queue_num)
 	return num_entries;
 }
 
+static int sdebug_timeout_cmd(struct scsi_cmnd *cmnd)
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
+		if (err->type == ERR_TMOUT_CMD &&
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
 static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 				   struct scsi_cmnd *scp)
 {
@@ -7789,6 +7817,12 @@ static int scsi_debug_queuecommand(struct Scsi_Host *shost,
 		if (NULL == devip)
 			goto err_out;
 	}
+
+	if (sdebug_timeout_cmd(scp)) {
+		scmd_printk(KERN_INFO, scp, "timeout command 0x%x\n", opcode);
+		return 0;
+	}
+
 	if (unlikely(inject_now && !atomic_read(&sdeb_inject_pending)))
 		atomic_set(&sdeb_inject_pending, 1);
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-5-haowenchao2%40huawei.com.
