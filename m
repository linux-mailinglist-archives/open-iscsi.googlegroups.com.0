Return-Path: <open-iscsi+bncBDTZTRGMXIFBBV7FZSHAMGQECFCUXHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEE54835DC
	for <lists+open-iscsi@lfdr.de>; Mon,  3 Jan 2022 18:31:04 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id o11-20020a2e90cb000000b0022dd251d30asf7810008ljg.8
        for <lists+open-iscsi@lfdr.de>; Mon, 03 Jan 2022 09:31:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641231064; cv=pass;
        d=google.com; s=arc-20160816;
        b=jmN51vHDbgUa4ssG38Ddood+lh0ULK8r4nvPv9wDR5GxeNLBXbuxX8ur8AT9GXVBEa
         ISLGzRqNCAZ5bMHv/yv5WUl/3upCYW/tSE2SQUyC7c7+cHIZwKYyjXJC7jB1Mj3K/UZF
         TKyukct42F1EUBiZRZVfihplg+Y+aJ7OJfINmuUqW7pRO+dapck27grpudSpFvaEyOT5
         88OpT2Kb2cYwuUeTo5q8nSaF7bvAzceipuhYuFzh6UdrAGYbqCorRI68u2rXNJ5A1r7H
         9/FSmFIHsfDVAOBbGMKRs+WTLqwE7v//pOFqIut31Gh0/Bpj2sQEEISxv406iVhvppQM
         rDNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=v3gn5+ljeRp9MG1q+Tu4cbjQ3XH3XC5CouUJCqBw/Ms=;
        b=Goe0kGjxg0qVod9ecmiRQcTa+Vbw30oBB5tlRVydFdJTQvjKV1vrQrbl4TXT/Fe4Vt
         NwTMjNNMT8KpsxL4c//285Fo2JzeRnItnwt20W8/xdSklzx9fCiBmpl4n8TMbn1vA+sX
         MA5bFk6Fz1ynF2OqAS6/SnHTLaF9TPEZ/EqZP7VTX59IQqblLARG2GchsZHaf9Bkd55z
         c3Sk3jWY1q/Y54+Bz3oyqGUB2MXk+osRnbyC0aCVHK1T90AkaBANzcnWiY+qHdQy+RqQ
         P0glsm7kMv9dWCq6Q/DtldzHQzkUWyJ7zoSE57XxjaS4E7NMm9r/+VrUpxFRQNjsvVDk
         GdTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QxJFG8DS;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3gn5+ljeRp9MG1q+Tu4cbjQ3XH3XC5CouUJCqBw/Ms=;
        b=Pl6oYjlG+EWwTs7W4P0Y1MdE9VqbyKXBUBxMEItfOUW+be+koPZPRpKgJvMitHye4k
         edQSRpZrKUlCSqpGU2WXkF3sjCSDTKZIQKry8F8+t61Q/P4Ioi6pZ2S5t5sW4iK6Nhfq
         Kh3UYfrWR3kqQkcMlzQHg9IGgRtSQcdy268AvpnJPKg16+JKNpF5eylyQpQvf14QUzkZ
         mfoXZHaxuJ3vBah+KuVDORzSrT1vY6iITzJzDRN+YurhAtViiFADlITJf4PcP9zVTdqb
         zAyTe/D+nOsXF+oXEXdpahlJXqmQJADSrPSSETrfZ5WIo22n2rELBAaSncDG0WSibJql
         UHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v3gn5+ljeRp9MG1q+Tu4cbjQ3XH3XC5CouUJCqBw/Ms=;
        b=VZFkgUYmtR0ZCAGJRnOyruky/2fnOAtR8naag5vQ4QXZUV1q6yo595yJz4S/OmpNb1
         n1BEqBN4IgJt+DQJpH4PEtKuCcj/fCsMTP8bxtjDRBUbQ7XYrwYcx3gee72XM+VaT5/H
         7+WbXx9mPNEhlWtSMvLGakdC7j+A1hKZGKwo1qVu3Oa8drUE9dsbh67QTQZ+NlW78p/k
         hTyd9D044PjHO+JfZtMCpQSeLdf31YKTYC9fxmhfomPORAmNwT+YLGaAYi6xA/y4NBD/
         ZnmUgm6WrxleYhCo9ZtcOH0KmMQzYtsyzbqZDTrs5Ji4fDpYUC3ZcF80ixwcrV/xJcJx
         j+uw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531SjijZRwBpou4IqH9YBx4FY717QecZNJL5S4kPwRAzcdLwwnLt
	epFpgGLM0LJyeMt7+3wnCas=
X-Google-Smtp-Source: ABdhPJxmWgFrfSUfnjZcnsySGF1oW6kyOvBeW1+58kCnL7FiD+gNegVY8qiNS8bDCEkMMRm6UVrVSA==
X-Received: by 2002:a05:651c:208:: with SMTP id y8mr38567513ljn.482.1641231063827;
        Mon, 03 Jan 2022 09:31:03 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:454:: with SMTP id g20ls2905589ljg.1.gmail; Mon, 03
 Jan 2022 09:31:02 -0800 (PST)
X-Received: by 2002:a2e:b8cc:: with SMTP id s12mr24591818ljp.327.1641231062702;
        Mon, 03 Jan 2022 09:31:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641231062; cv=none;
        d=google.com; s=arc-20160816;
        b=PlkxplGMIG9o0OIgZkpX1IDEsgfDCFbW3iDS6YqDkVnEIek8C4W9n5S4IGZgdGs/a7
         uJ9indsm/lgrNQ6KbZtBvYaI3d/yn7/Ju3SNOryDMDJhe2thIrvpJDMsdZdr920D2hBa
         iSdG6Cuh76DwoP9AwG+6XFjrLZgXVBe93WF+KZI7FSLfcYmX6+PjlMxCW/nqKcR41MWw
         a/3P///mV/Q/NBVMTK0pv9HukkpdJ+hGAa+3D6iz3dkksK124P6BfXrhRdnjbTJYZbxr
         0mkxGvxePvZJnydsCKb9lp5CljiwCg5tdFlWKAK5mMUIlSH4XK2qIXmCZpdPNWiOnOGJ
         pJKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Vx37M5wLv51qJ9n+vzX9zeUDrtpOQ7PFsN55EiEZAA4=;
        b=KY1zec/shGIgxOsuwH4SFvULYGarXMyAdEgX6QwYqCCUHA1U51qvitQU8jZrJ+cbzL
         Vom1/AoSalmLKF/DkLxBbtoCFImRVO7PsDv4FBzhzUguNriqn5cW3cMYgVeWDfst9zaw
         yadszrehX60MaOzYtrS+TE6i091JTT4skSSJZjj/+LwW5iraIVTiIwQU4PQlG6pYzXZn
         xMaJnYv5eoMaRYZglYnIBL9o697pOrFtX6R7MBFWsISk38SOlsCYx2fcwKbkBNmPtej8
         buyhQQcPKpVrax/DaXvBBrhmQ5//d7uxchCrXblwnePtcOpmr+1W6l9ljBkapQZza0dC
         /aFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QxJFG8DS;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id e4si530716ljk.0.2022.01.03.09.31.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:31:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3FC486119C;
	Mon,  3 Jan 2022 17:31:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D37D4C36AEB;
	Mon,  3 Jan 2022 17:30:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lixiaokeng <lixiaokeng@huawei.com>,
	Lu Tixiong <lutianxiong@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	Linfeilong <linfeilong@huawei.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 1/4] scsi: libiscsi: Fix UAF in iscsi_conn_get_param()/iscsi_conn_teardown()
Date: Mon,  3 Jan 2022 12:30:43 -0500
Message-Id: <20220103173047.1613630-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QxJFG8DS;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Lixiaokeng <lixiaokeng@huawei.com>

[ Upstream commit 1b8d0300a3e9f216ae4901bab886db7299899ec6 ]

|- iscsi_if_destroy_conn            |-dev_attr_show
 |-iscsi_conn_teardown
  |-spin_lock_bh                     |-iscsi_sw_tcp_conn_get_param

  |-kfree(conn->persistent_address)   |-iscsi_conn_get_param
  |-kfree(conn->local_ipaddr)
                                       ==>|-read persistent_address
                                       ==>|-read local_ipaddr
  |-spin_unlock_bh

When iscsi_conn_teardown() and iscsi_conn_get_param() happen in parallel, a
UAF may be triggered.

Link: https://lore.kernel.org/r/046ec8a0-ce95-d3fc-3235-666a7c65b224@huawei.com
Reported-by: Lu Tixiong <lutianxiong@huawei.com>
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Lixiaokeng <lixiaokeng@huawei.com>
Signed-off-by: Linfeilong <linfeilong@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 30e954bb6c81e..8d1a05d5eb4dd 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2991,6 +2991,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
+	char *tmp_persistent_address = conn->persistent_address;
+	char *tmp_local_ipaddr = conn->local_ipaddr;
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -3012,8 +3014,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
-	kfree(conn->persistent_address);
-	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -3025,6 +3025,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	mutex_unlock(&session->eh_mutex);
 
 	iscsi_destroy_conn(cls_conn);
+	kfree(tmp_persistent_address);
+	kfree(tmp_local_ipaddr);
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_teardown);
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220103173047.1613630-1-sashal%40kernel.org.
