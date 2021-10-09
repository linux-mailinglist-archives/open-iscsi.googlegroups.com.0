Return-Path: <open-iscsi+bncBAABB4HBS6FQMGQEQYEOG6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 310FA42ADD8
	for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 22:32:50 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id c8-20020a4ad208000000b002b6b6df6b7fsf190263oos.13
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 13:32:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634070769; cv=pass;
        d=google.com; s=arc-20160816;
        b=RapwPHXuZgM6pYnZyNyGfqT5N14gdLK6X8hL3BsACVncu2GKFcT+bGfpxkahcQJcJ4
         THLc166dTHeZnZDJkUpXxJGxtavJhPJykD8HzevWkzocOXHhHqY4WOWwEmFfOHhRMlud
         Os5drj7/Zwe5CWdiwOYuSMQ504PlWMe6/hnstijXJC2/C40SANu2JlbKKGGyPOapCGek
         iAJfVmJ+Opl+PzBLw7Uswq3HuVEw+zEZr2gFH8AszgXUoGguTxQ7Ul7tkQR/iHlD+293
         5ef+o37xGmQPiS1KxziMROp6UdC/+dGTsyik8Z+N87PwOlkYcIyqAla4rWmYByMIt/sp
         Ok9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=z8O2TVInlGQf2k4LUGzo2cxr+5vg9PA4nmHL44jn1Gc=;
        b=Vf9Zo644Sd5JYc+7TbhtS3Ii6ZrBJ3eXOXRsGmbC30PNBesTGaHjgPlTbUKGlfyLg8
         ezbg/spGnpre9t6HpOxCKxs3y2gpO28Py7ZtSRed3WTUuKFJsovt5uBvkqfKVXg1JdUz
         g2Tlspjd+5G8nLx4nbHt4fERYVsbwZYE0pZd/5An4pzBfix2j7Nw8+LZ06Ax+8EGtL05
         sKXTZkVH7IEwt3QL0KIagwPkgnX+VZ5egt/KkPRdyQOTJlNftY9tCp5Smmzwa/NyTMWE
         lUCuoIuM21ohBHIHM30bjRQI5C4saSjisIlNWureScufdqF4gr1pYLCzK83nRb66Aydu
         4Tkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z8O2TVInlGQf2k4LUGzo2cxr+5vg9PA4nmHL44jn1Gc=;
        b=WSOqwFNy91tqrEY6hvJWlHQTBrvwncXnfoEac7xXOGh8GWt1WTDTkiSzCz3IfM2ZJr
         Wg6kxlOVOLDXL1ePiWDX1vg3jyVzwjlCBihta96bLHHcEJQUR0d+tmA2vhNQZrLMYOoR
         u0HW6aouvSDnlsEh0qOvIdxC78rjJ4CYlFBTCNnqNJG27J5gVSbd8Npi638g/CBvdl21
         tI89vXjnqlkFFKexEBrUIANByxo+P8rk9mLrISgzvZjuwSWdIRIyDVz2yHrEBxmRUp06
         FY8IPg6eX93LR72LqWwkqpzJfhCq9KO9jkW1bmLnAWkj0bH27WrUXYGQ9usk9zqpMLRB
         qxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z8O2TVInlGQf2k4LUGzo2cxr+5vg9PA4nmHL44jn1Gc=;
        b=S9Ic/d+aqV0SNiXviNaujrr8Z3cwTmKsKYTmnpOZZE+tPI+fssxnfia9RLtXUI6BtA
         P9mZLq6zj/0Vuk565syGtZnT9I4d9/3CxEehV2bzYKDUqprfxaXheMEdktGxdBHFRt10
         8nkzacVZrd/1WKkKxU9xmB5DslIJeP36R1k5SEVUnHEXyvD/QVTHjyJ++FlnzkIrMmrA
         A66yS05989J+r36Gac+S4ib6mXh97/BbOEM7fDcY3oISyPD9Aig/YOsr8O1XpEuckFLt
         WWo4rR5qWTvx+fFzsevfHcjfbt8SrpY5ZeRtqlOLBCYzx8WIWbIbrf2mVxSwVLplhc2o
         U45w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531ZftSjQwAsU3K3VwI8WQIJfyJZZE9Q+k1wCGbf6QLOHRDHyKtJ
	v0dIUHrpuoJOQ+8JrfGI2XE=
X-Google-Smtp-Source: ABdhPJy+T0zOz84PRIK5QobUczsC1WsX0iqT0n3NAoXxI+CV9cLgPt3eDt8jScUeFsPbFYVipYtT/A==
X-Received: by 2002:a54:401a:: with SMTP id x26mr5065717oie.117.1634070768958;
        Tue, 12 Oct 2021 13:32:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:ad53:: with SMTP id w80ls40540oie.7.gmail; Tue, 12 Oct
 2021 13:32:48 -0700 (PDT)
X-Received: by 2002:aca:b203:: with SMTP id b3mr5166249oif.89.1634070768705;
        Tue, 12 Oct 2021 13:32:48 -0700 (PDT)
Received: by 2002:aca:d607:0:b0:268:d9cc:6ed5 with SMTP id 5614622812f47-2907f884750msb6e;
        Fri, 8 Oct 2021 20:03:19 -0700 (PDT)
X-Received: by 2002:a9d:12b2:: with SMTP id g47mr1078857otg.227.1633748598799;
        Fri, 08 Oct 2021 20:03:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633748598; cv=none;
        d=google.com; s=arc-20160816;
        b=pCyBT0bumbgTsc2tJHBylXOJzDKJuO2dg+oM9j1nf16Dd8mnXnFyvM3LIU7EgOQrVy
         QUCmEkWI6dqdJQBoH4AIowa2Iwd8Eo9eKGpmcnV67E0V+5aoNnnGnNnFmzNHSfAzqQiM
         HSvNbwLMOfxnf7O97cPpPTCD0P8iUmw/MrpFoRkzkXgw3EsZey9fjPBTYxTJvcqo1B0H
         MmLRM5CB23nEBXTfOXAhMI6fgqzCfswAKK5g04rsr7i+uLrM1qZ0FkHF4n8GW6H95755
         odpuc3QdbFHlNVEryZWeFMnWV6M9KdMxKHJqWwkHIs291LbPAdTo5QSDNY5TwOlzQkqP
         fPhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=SpB7u90MhZfugG+rLHcja4ysI/zODy2T84mGM2zdaYk=;
        b=yCv+NlP+qIIhrVnqSwLvDpHryHvmo5sJCAljq1Djze5TVuC+RBu7uNsIbbNx3FVOa8
         OEvas2B7BFEp4xMxyvznYb4ybRj6mhyjUjpl7ny4C1SjPnOqsCN66C9WbrrE+D52Gs8n
         HzcwD3gtMOTxeKQ4YeTdMKUZ9hJYv60Yed8CYxpDW6aDBHMYsT9q6y9yYrcDhwPz/t+4
         l0bkACqO4GiP6SpeaG8/b8kDwc9VWVNe82uXBtS3HkxubsT8Nu3MXsGGMV6GE6CgXi+2
         HMJYg3ig0qk1/n7OuasuhTS32VlE+mRb+6Zemmxtfk+thrvnGDqgAVnpXHZKp/95Z96U
         qeKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
Received: from smtp181.sjtu.edu.cn (smtp181.sjtu.edu.cn. [202.120.2.181])
        by gmr-mx.google.com with ESMTPS id m30si87385ooa.1.2021.10.08.20.03.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Oct 2021 20:03:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) client-ip=202.120.2.181;
Received: from proxy02.sjtu.edu.cn (smtp188.sjtu.edu.cn [202.120.2.188])
	by smtp181.sjtu.edu.cn (Postfix) with ESMTPS id C3FF11008B38A;
	Sat,  9 Oct 2021 11:03:15 +0800 (CST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by proxy02.sjtu.edu.cn (Postfix) with ESMTP id AE0B9200C082A;
	Sat,  9 Oct 2021 11:03:15 +0800 (CST)
X-Virus-Scanned: amavisd-new at
Received: from proxy02.sjtu.edu.cn ([127.0.0.1])
	by localhost (proxy02.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ceEVCXZTXeQJ; Sat,  9 Oct 2021 11:03:15 +0800 (CST)
Received: from guozhi-ipads.ipads-lab.se.sjtu.edu.cn (unknown [202.120.40.82])
	(Authenticated sender: qtxuning1999@sjtu.edu.cn)
	by proxy02.sjtu.edu.cn (Postfix) with ESMTPSA id 202E0200C02C2;
	Sat,  9 Oct 2021 11:03:00 +0800 (CST)
From: Guo Zhi <qtxuning1999@sjtu.edu.cn>
To: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Guo Zhi <qtxuning1999@sjtu.edu.cn>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] scsi scsi_transport_iscsi.c: fix misuse of %llu in scsi_transport_iscsi.c
Date: Sat,  9 Oct 2021 11:02:54 +0800
Message-Id: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: qtxuning1999@sjtu.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as
 permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

Pointers should be printed with %p or %px rather than
cast to (unsigned long long) and printed with %llu.
Change %llu to %p to print the pointer into sysfs.

Signed-off-by: Guo Zhi <qtxuning1999@sjtu.edu.cn>
---
 drivers/scsi/scsi_transport_iscsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 922e4c7bd88e..7d6a570ebf48 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -129,8 +129,8 @@ show_transport_handle(struct device *dev, struct device_attribute *attr,
 
 	if (!capable(CAP_SYS_ADMIN))
 		return -EACCES;
-	return sysfs_emit(buf, "%llu\n",
-		  (unsigned long long)iscsi_handle(priv->iscsi_transport));
+	return sysfs_emit(buf, "%p\n",
+		iscsi_ptr(priv->iscsi_transport));
 }
 static DEVICE_ATTR(handle, S_IRUGO, show_transport_handle, NULL);
 
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211009030254.205714-1-qtxuning1999%40sjtu.edu.cn.
