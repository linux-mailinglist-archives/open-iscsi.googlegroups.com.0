Return-Path: <open-iscsi+bncBCIKNOFMWQGRBXPO7SSQMGQEZ43DB6I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B49AA7605F5
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 04:45:51 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id 46e09a7af769-6b9d34de264sf9836098a34.0
        for <lists+open-iscsi@lfdr.de>; Mon, 24 Jul 2023 19:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690253150; cv=pass;
        d=google.com; s=arc-20160816;
        b=MLcf/j7UFECCznsJEmoiwdmXA+ldOrf4SSBfkZhkNiPjWfXzMz+J1dsqDeL6Q7FEjc
         USpZlBs+ASpZrg3mdEQbOMgJtGPlQzs4UzqAlWnyO9GlaACNPjugPHE40Bk9wu0/eCMH
         53DLVtVy7GnX2TzPNgEA1BNh4+O5VZaaJbUSqBwQ5vq76s1MSfk5TWi9tAVvZPlDaPM+
         YdYdAa5M6gPZeG2ZBhHyLT6VT8eMhZTc28lVNc46/mpuvE843uEfP3psHyUxSRKL22/n
         fHVT+XSmQcnjfRqMZ7JwzRPk3XCpAsbktwAHIvvXNZuc3YhDOnYg38ptXaXNqTxzCUhN
         hMvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=szhNujcdx0hjV9x65DwcRmON+Akh/hXVpqNwztxEB8k=;
        fh=vwEEfjY7oiwSg1ay1D8wxvq8/4FXR31uYswVfQKJ698=;
        b=OND5MS5FDk42hXDISBvvb2YOorir+VrouN8R2XjI+bk8IpjzLwQQgefeeDj5exY+5o
         NviCppz8fXq9/xzyVyV+2EWS1nM7QA3O6fPlx2UdT6RxhQPuxW0cInQbOSVokJiIbybq
         WQ+6I0dAdI/P45+FTFaKIRsdNoV9MSUbpy/nlufbJleH+LRvUCVhnveqrQ2w2+j+xw6q
         LgbpNUG0eMWacCY2ilVl4Y35Ehqpe23t+nkeDz3oLSwwMGAgNM8CSJ7mOJXKK9v+4a+u
         v2gvMJpT+hSC4eIcjU2IvxFf2I1LyGKvra6vvfPxbcq2fG1v8tOuT5gZeD8JOl7NOrQn
         1UtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 159.89.151.119 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690253150; x=1690857950;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=szhNujcdx0hjV9x65DwcRmON+Akh/hXVpqNwztxEB8k=;
        b=kRzgOImbYyJtTLMVCLgka4kUDnVkmKj+OrHEmYQ0jIeecUG71h5bt8G3F5oGMypVoW
         o9g6wW6HBo5AkXinm/lKdR13UgoQtDRk6S2UlmMh9qngjnOkt/jGp90doYwrz+sN+DRK
         wufHwagjNZDrRyxPD3EDAai84f/jQGiE6oufY5xO3YpXvReqJAJJwc0k4ol0taZ14e5l
         BKJ+igrT4B896LsF3otHuW1UP5jn8UG1bHy3u9IHNhDUKeivo9S/3uHE7ucvMOPTdW68
         Gcz+UAgUBvZErRYm9VWfzJ6r7X9w8iPI0W/6jQP8YR9y/QP8zEsrNFVkDyPIeLTCVkRn
         Vk1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690253150; x=1690857950;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:x-beenthere:mime-version:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=szhNujcdx0hjV9x65DwcRmON+Akh/hXVpqNwztxEB8k=;
        b=W1/jQKnN/BxQOvliFSSZ4Hoq7Qp8BbblYt+/EYoegW9jj9UyRLTqMp9ZB6adPaPVpF
         3OsfFiSl7mv9t/xwd5xY0LhNwTGd6qhuB4gWigPK7udxuE3LWYA5t/D7/HeWA2a/ns98
         2jBtL7hoAcanD4llB/M9jvT9Jjevvn3zfyoHsdsYiwaPl8t6lPqdzZXvG+KnSwBbf4mi
         FyNytqmvpon/+K2DCMBgJp5ly+Km4Fyh6OCvYrM0iCbuDXFCvxZJO2LgKJsFZjRjmJ8X
         1wqoSU75rFqc6G8fcRzKH9szLe5K34SFl1mX27jinf4uKJ6YjdN+Qv+eNYmh4Ovc/6ZZ
         T2Mw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLaeNKOvkFBrfKFyQfkLo2zwlM0CwXudLHU0oYoTeCgMCbjjnoNm
	qAgy11XvyZRXBEwE8U8UraU=
X-Google-Smtp-Source: APBJJlFQJ7EznkaazfNEmuzFDxLC0PPMo6stY0cZbgCnA0Uek87ERq+8SvAJivIGp/4MO4oaZCCwGA==
X-Received: by 2002:a05:6870:c6a5:b0:1b0:18e8:9536 with SMTP id cv37-20020a056870c6a500b001b018e89536mr13475812oab.52.1690253150436;
        Mon, 24 Jul 2023 19:45:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:d60b:b0:19f:9f28:a580 with SMTP id
 a11-20020a056870d60b00b0019f9f28a580ls1656950oaq.1.-pod-prod-05-us; Mon, 24
 Jul 2023 19:45:49 -0700 (PDT)
X-Received: by 2002:a05:6870:a2cd:b0:1ba:9a49:d967 with SMTP id w13-20020a056870a2cd00b001ba9a49d967mr12304053oak.23.1690253148987;
        Mon, 24 Jul 2023 19:45:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690253148; cv=none;
        d=google.com; s=arc-20160816;
        b=zo6oaEuVcn8NZIeh4+8BE2xdQfnMQLfOnIizajI9STqq2mD2PrW3MshO3MSpNMj8lM
         RmKzFCcarUF6+zrFRAwguXiCa8ksKPKoeWXh9ZiRd6gej06JFBCuJfqs1rUypQV+Mjeu
         SdHuroecZP9e9eXEAklID7JDyYh6LrpwxlZSwt1ldYXYxfUzltCMkNfucP4nDdIaxQjH
         XOhxQ4q4myzizmWkQA9fsABNA77bNcpG4J2jcfiTxV7A5g8QJhKwSVGYlG1vO9v3/W0j
         jeSrFCJcfBjeOdtY0yDhFDeb99Hr/kW1LynqDHoDWyMCNYTO/OzZ6LSBxEkSPbW6HOqs
         Y7Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=uW4fW7VtucLlm8UnVQ2NrMbm8zk1gfq4AdZHE5TM0Bc=;
        fh=vwEEfjY7oiwSg1ay1D8wxvq8/4FXR31uYswVfQKJ698=;
        b=vWDpBbDBVAmvthVUvSYzzmt5UMkwb6C2QLoNW2p1TX1JQv3g7+x2S0jGYJMxI7sMmx
         zEsH4pLaxgucPgZe2i8kFCqp//SmunwKzmKXbLnc2LKVAX/Vpp/HUhIHLaUppvgAQfh5
         /9nWFtwnSrMXDAn3F+MsLICyzY+L80i4niJiW5MPKJ0Dzb6cXgc/NtY1JaE3XLQPMntY
         5NhCFxEqkLdY+f4dUtuzP1LcLmWQBkFBm+YonfpnTnisEP1eUu8bTOD3c9GUgwi0r5tE
         67otetq747GSI1hra15ditkqjyo1DL4qqqd7tasuBOv3pBmB8gXvUw48JxuCgNwYhiyh
         O3cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 159.89.151.119 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zg8tmtu5ljg5lje1ms4xmtka.icoremail.net (zg8tmtu5ljg5lje1ms4xmtka.icoremail.net. [159.89.151.119])
        by gmr-mx.google.com with ESMTP id gb27-20020a056870671b00b001bb6f89348esi220109oab.1.2023.07.24.19.45.48
        for <open-iscsi@googlegroups.com>;
        Mon, 24 Jul 2023 19:45:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 159.89.151.119 as permitted sender) client-ip=159.89.151.119;
Received: from localhost.localdomain (unknown [125.119.240.231])
	by mail-app2 (Coremail) with SMTP id by_KCgC3v4tZN79kPYeCCg--.10631S4;
	Tue, 25 Jul 2023 10:45:45 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	michael.christie@oracle.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	vikas.chaudhary@qlogic.com,
	JBottomley@Parallels.com,
	mchan@broadcom.com,
	benli@broadcom.com,
	ogerlitz@voltaire.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [PATCH v1 2/2] scsi: iscsi: Add strlen check in iscsi_if_set_{host}_param
Date: Tue, 25 Jul 2023 10:45:45 +0800
Message-Id: <20230725024545.428519-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: by_KCgC3v4tZN79kPYeCCg--.10631S4
X-Coremail-Antispam: 1UD129KBjvJXoWxCFWUGFy5Cw45WFyDtry7Wrg_yoW5GFyrpF
	WrW345A3yUJrZ2kwnrXr4rKrWSkFs3XrWDtFW8t3s8ArZ8KFy5Ka9rKw4Y9FyUArs8Xw1Y
	gayUt3W5Wr12krJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvE14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jrv_JF1lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc2xSY4AK67AK6r4UMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVWxJVW8Jr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF
	0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWI
	evJa73UjIFyTuYvjfUomiiDUUUU
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linma@zju.edu.cn designates 159.89.151.119 as
 permitted sender) smtp.mailfrom=linma@zju.edu.cn
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

The function iscsi_if_set_param and iscsi_if_set_host_param converts
nlattr payload to type char* and then call C string handling functions
like sscanf and kstrdup.

  char *data = (char*)ev + sizeof(*ev);
  ...
  sscanf(data, "%d", &value);

However, since the nlattr is provided by the user-space program and
the nlmsg skb is allocated with GFP_KERNEL instead of GFP_ZERO flag
(see netlink_alloc_large_skb in netlink_sendmsg), the dirty data
remained in the heap can cause OOB read for those string handling
functions.

By investigating how the bug is introduced, we find it is really
interesting as the old version parsing code starting from commit
fd7255f51a13 ("[SCSI] iscsi: add sysfs attrs for uspace sync up")
treated the nlattr as integer bytes instead of string and had length
check in iscsi_copy_param.

  if (ev->u.set_param.len != sizeof(uint32_t))
    BUG();

But, since the commit a54a52caad4b ("[SCSI] iscsi: fixup set/get param
functions"), code treated the nlattr as C string while forggeting to add
any strlen checks, hence leave the possibility of OOB.

This patch fixes the potential OOB by adding the strlen check before
accessing the buf. If the data passes this check, all low-level
set_param handlers can safely treat this buf as legal C string.

Fixes: fd7255f51a13 ("[SCSI] iscsi: add sysfs attrs for uspace sync up")
Fixes: 1d9bf13a9cf9 ("[SCSI] iscsi class: add iscsi host set param event")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
V1 -> V2: resend with correct CC list

 drivers/scsi/scsi_transport_iscsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 62b24f1c0232..8ade01da3045 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3030,6 +3030,10 @@ iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev, u
 	if (!conn || !session)
 		return -EINVAL;
 
+	/* data will be regarded as NULL-ended string, do length check */
+	if (strlen(data) > ev->u.set_param.len)
+		return -EINVAL;
+
 	switch (ev->u.set_param.param) {
 	case ISCSI_PARAM_SESS_RECOVERY_TMO:
 		sscanf(data, "%d", &value);
@@ -3203,6 +3207,10 @@ iscsi_set_host_param(struct iscsi_transport *transport,
 		return -ENODEV;
 	}
 
+	/* see similar check in iscsi_if_set_param() */
+	if (strlen(data) > ev->u.set_host_param.len)
+		return -EINVAL;
+
 	err = transport->set_host_param(shost, ev->u.set_host_param.param,
 					data, ev->u.set_host_param.len);
 	scsi_host_put(shost);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230725024545.428519-1-linma%40zju.edu.cn.
