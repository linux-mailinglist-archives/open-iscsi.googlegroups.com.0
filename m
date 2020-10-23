Return-Path: <open-iscsi+bncBAABBSVB4L6AKGQEYFVDPWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-f55.google.com (mail-oo1-f55.google.com [209.85.161.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D4C29CB40
	for <lists+open-iscsi@lfdr.de>; Tue, 27 Oct 2020 22:27:40 +0100 (CET)
Received: by mail-oo1-f55.google.com with SMTP id t19sf1367306ook.18
        for <lists+open-iscsi@lfdr.de>; Tue, 27 Oct 2020 14:27:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603834059; cv=pass;
        d=google.com; s=arc-20160816;
        b=MSl96Mn5lZp4DVu1LQw6bzB6eLAg8OpXeR6+GYc6u3CCimna1iiQEge9whMUfd9n4Q
         VxkmituLvWkTouknAhQqaIvX1C+tJtDZEuSz2V/9XRckHILZvRk8G4+7wFme/UnSoAPw
         iNjqlgplJXO0EsvBG38y2MId4BeyAn5LcwHvQJ4PtO+YsqZxM6YZ/OPVngHH2H1pjxJl
         /C6+73QRkjU7DkviRFP9edjIoOD6BAf0whU6k0suSorPQ/cfPCB0grG/Ycha/q7FjjzS
         cYvBr6knk4twuRl0kY7Tn+uY5fZpsLKNTC24A4mvv4nGzITa0gxXbQQ2x0RqpP2FlV60
         mv5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=mfunblQl6hpdAe6kCckBYVv1C29l+I1fIoGgVidoum8=;
        b=ERttxeD4WfupDRo54FnV8gwZSzaw6cApECZRICNFPvrLq006xOX3i23ztbMkcp88F1
         WNJmWS7lN5NvK1olzOHCD6+7uh3wmPBRIzGCio/rab8610DoFESqjjmkflU8PKf1R7hR
         reymY0F8nAwAxlmiygMnmqxgxUssNllW7FwlIcXuApgdjcqnCpTyMQ8qz8j72xT788kt
         BgMC4Lh1rNC9ggU5n3F5jcy/Uvg8Jc8SPaw8MLpi9gwQeOJDEQeJxo/aci2bBbUPyTjW
         L2Bku34kGUYtuUC595NaQTh0vzN3gZxlyhYtHKVezBSFc6W9XkBl/zBuYC31Dm/EtBhr
         kstw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cMm6QTak;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mfunblQl6hpdAe6kCckBYVv1C29l+I1fIoGgVidoum8=;
        b=PXaXndRmdnifU87HewEFQFZHi6kRWy+MahpjQDmQOl3x1M1Vtq9zYHtoGPk+53zH4E
         dbr8XPKcxDzFPbggjrXQAC7rpcRpYKS0YL1xKpcgEY5sBeak17AMc4J0Yaurcsnby6xs
         iMhRUZTt15NxQwbTuChuuQB4C/gyb7A2LAC9buV7AhwmYJ7tZfMCTYPnQ92+lqT6l3+H
         VL8YXsWXDA9PY+nw3mgb925qQD7GYMCkjqIcq20pfgZnteQwwwlkehfndia3SKihMOBq
         ZTpu1ABiTIDNDLyKS2VWOj+a35XM96cRpn3vXeKB52lzHXVbEXu96l0/fL1zyJ7c2Win
         LsVw==
X-Gm-Message-State: AOAM531xRhkMithwf4x8dq7aeyUTVQRQoIrELybeJmMe5PI+qlOXgf2l
	3lviZGu8tFf/UF5f9BZvjPg=
X-Google-Smtp-Source: ABdhPJxDwjqi2XWAwx6vydTKW+IUgoIOIWFsc/8eK55FezCULCTOhgYnSmQq3c3909ZooDDNIpPkUQ==
X-Received: by 2002:a9d:6d97:: with SMTP id x23mr2822055otp.257.1603834058930;
        Tue, 27 Oct 2020 14:27:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:c1:: with SMTP id t1ls814439oic.7.gmail; Tue, 27
 Oct 2020 14:27:38 -0700 (PDT)
X-Received: by 2002:aca:f0c:: with SMTP id 12mr3090465oip.9.1603834058675;
        Tue, 27 Oct 2020 14:27:38 -0700 (PDT)
Received: by 2002:aca:c301:0:b029:e1:c0c6:fa92 with SMTP id t1-20020acac3010000b02900e1c0c6fa92msoif;
        Fri, 23 Oct 2020 09:33:50 -0700 (PDT)
X-Received: by 2002:a05:6602:5c7:: with SMTP id w7mr2342519iox.108.1603470829949;
        Fri, 23 Oct 2020 09:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603470829; cv=none;
        d=google.com; s=arc-20160816;
        b=XLw8fzPAoTnd+4BRkk8/B2kQjpQzV21rHYiysyzPBASV5bujx+IaVdD4VMz9L+YFbC
         bsI6W5CW/O/lreIkjQGTbUDwycvFluZ4JYSK3eTfa2RHaQiZ3mIZAUq0/BQ+jwrQXimX
         /qhAq+P5Zv7yPRS4uOmT7Y0V9vXvslhMdjPjzu8/twKSHhpz4pw1rcTltL7kPKZnKIup
         DgVIUyU+1YFWvxquEON6R4kto5ND6XaqOAwJ0zWl8AynqyoRfNG4m6P7tBkdBxqWecrw
         5kuEWyNcHDNR3O1tTvcpm6/7spovVGUUJGpI0btr3Z48Jk87zpVImUGRQKPiAuLj33kv
         AwTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=uyWH4oEpUJTj/7JJQV+lFaHWI9BpbUEdKoOnNmhE9j4=;
        b=g3+mCtBlBhK27iD/S/Sc+JkvLmMLKjXyai8YM3UO5+osXd+OnHRm/qz4wpPrZwxHM4
         uZ4x1GaQjjyXOzKZuHm7MNYlM84KvgOiVF22pWxz2OlpJa1BI8JDJM0ah3/3fzxQ/8QV
         OfG1xygHC/qCu7eMi31HCXLN00tlKCKVXVxnVtDY0nd4m6WFpFHs+4UqOqgmHzXkgbYt
         iH/Fy32Re7r65luB8bVunbKBgfVF+pP2uVLH2PDvILx7Wk+xtwwB5oYYI11PYqURv1Or
         gI6nU2ZJMMxkiLn43HJYOQgIBRTrwxsZ8f6iHs0a1mxL0FP9sGIS+eEkI4rLEgH3UNEy
         Fqyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cMm6QTak;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k3si133990ioq.4.2020.10.23.09.33.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 09:33:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de [95.90.213.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1CFEC246A5;
	Fri, 23 Oct 2020 16:33:48 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
	(envelope-from <mchehab@kernel.org>)
	id 1kW00f-002Awa-Ul; Fri, 23 Oct 2020 18:33:45 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Jonathan Corbet" <corbet@lwn.net>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Chris Leech <cleech@redhat.com>,
	Lee Duncan <lduncan@suse.com>,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com
Subject: [PATCH v3 27/56] scsi: fix some kernel-doc markups
Date: Fri, 23 Oct 2020 18:33:14 +0200
Message-Id: <8ed7f149f25a363eea76e514c253c4e337c59379.1603469755.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1603469755.git.mchehab+huawei@kernel.org>
References: <cover.1603469755.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cMm6QTak;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Some identifiers have different names between their prototypes
and the kernel-doc markup.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/scsi/iscsi_tcp.c         | 4 ++--
 drivers/scsi/libiscsi.c          | 2 +-
 drivers/scsi/scsi_devinfo.c      | 3 ++-
 drivers/scsi/scsi_lib.c          | 6 +++---
 drivers/scsi/scsi_transport_fc.c | 2 +-
 5 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index df47557a02a3..a9ce6298b935 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -180,7 +180,7 @@ static void iscsi_sw_tcp_state_change(struct sock *sk)
 }
 
 /**
- * iscsi_write_space - Called when more output buffer space is available
+ * iscsi_sw_tcp_write_space - Called when more output buffer space is available
  * @sk: socket space is available for
  **/
 static void iscsi_sw_tcp_write_space(struct sock *sk)
@@ -353,7 +353,7 @@ static int iscsi_sw_tcp_xmit(struct iscsi_conn *conn)
 }
 
 /**
- * iscsi_tcp_xmit_qlen - return the number of bytes queued for xmit
+ * iscsi_sw_tcp_xmit_qlen - return the number of bytes queued for xmit
  * @conn: iscsi connection
  */
 static inline int iscsi_sw_tcp_xmit_qlen(struct iscsi_conn *conn)
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 1e9c3171fa9f..8a4552f09dfe 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -777,7 +777,7 @@ int iscsi_conn_send_pdu(struct iscsi_cls_conn *cls_conn, struct iscsi_hdr *hdr,
 EXPORT_SYMBOL_GPL(iscsi_conn_send_pdu);
 
 /**
- * iscsi_cmd_rsp - SCSI Command Response processing
+ * iscsi_scsi_cmd_rsp - SCSI Command Response processing
  * @conn: iscsi connection
  * @hdr: iscsi header
  * @task: scsi command task
diff --git a/drivers/scsi/scsi_devinfo.c b/drivers/scsi/scsi_devinfo.c
index ba84244c1b4f..d92cec12454c 100644
--- a/drivers/scsi/scsi_devinfo.c
+++ b/drivers/scsi/scsi_devinfo.c
@@ -559,7 +559,8 @@ static int scsi_dev_info_list_add_str(char *dev_list)
 }
 
 /**
- * get_device_flags - get device specific flags from the dynamic device list.
+ * scsi_get_device_flags - get device specific flags from the dynamic
+ *	device list.
  * @sdev:       &scsi_device to get flags for
  * @vendor:	vendor name
  * @model:	model name
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 97ff31ed2a44..f74db5160f23 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1502,7 +1502,7 @@ static void scsi_softirq_done(struct request *rq)
 }
 
 /**
- * scsi_dispatch_command - Dispatch a command to the low-level driver.
+ * scsi_dispatch_cmd - Dispatch a command to the low-level driver.
  * @cmd: command block we are dispatching.
  *
  * Return: nonzero return request was rejected and device's queue needs to be
@@ -2364,7 +2364,7 @@ scsi_device_set_state(struct scsi_device *sdev, enum scsi_device_state state)
 EXPORT_SYMBOL(scsi_device_set_state);
 
 /**
- * 	sdev_evt_emit - emit a single SCSI device uevent
+ * 	scsi_evt_emit - emit a single SCSI device uevent
  *	@sdev: associated SCSI device
  *	@evt: event to emit
  *
@@ -2412,7 +2412,7 @@ static void scsi_evt_emit(struct scsi_device *sdev, struct scsi_event *evt)
 }
 
 /**
- * 	sdev_evt_thread - send a uevent for each scsi event
+ * 	scsi_evt_thread - send a uevent for each scsi event
  *	@work: work struct for scsi_device
  *
  *	Dispatch queued events to their associated scsi_device kobjects
diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index 2ff7f06203da..42a6dd3bd19f 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -629,7 +629,7 @@ fc_host_post_vendor_event(struct Scsi_Host *shost, u32 event_number,
 EXPORT_SYMBOL(fc_host_post_vendor_event);
 
 /**
- * fc_host_rcv_fpin - routine to process a received FPIN.
+ * fc_host_fpin_rcv - routine to process a received FPIN.
  * @shost:		host the FPIN was received on
  * @fpin_len:		length of FPIN payload, in bytes
  * @fpin_buf:		pointer to FPIN payload
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8ed7f149f25a363eea76e514c253c4e337c59379.1603469755.git.mchehab%2Bhuawei%40kernel.org.
