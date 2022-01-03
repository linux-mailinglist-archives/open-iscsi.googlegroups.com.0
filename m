Return-Path: <open-iscsi+bncBDTZTRGMXIFBB4HEZSHAMGQEMPLE3IA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D47D848359D
	for <lists+open-iscsi@lfdr.de>; Mon,  3 Jan 2022 18:29:20 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id b19-20020ac24113000000b004297f324073sf4370886lfi.8
        for <lists+open-iscsi@lfdr.de>; Mon, 03 Jan 2022 09:29:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641230960; cv=pass;
        d=google.com; s=arc-20160816;
        b=pIQDUpV2f2NKs5fgjM5Wd3uC70Z93aWRiHhqub+oIBrXoQYwQCPOyJLVBmwwmbO02A
         UzKtu2zSzKsBPJonNA66x4Y7ec2MNfcooxIwppMO/E/iBMcO4dKbcvXU5SJWkNIQSxHg
         RZgWDH1YrdSowx6yeDuyUe2aXLK2A6Q6CWOltk0OzmeI3c71FMYhmYofkQ6pMFLIjSU0
         TH4ragHVvDm6wX/CcouTeyfRXOC8Ty9qXEM/2P6RR8kaV1Dmy7FfTVeafhr6sjRyCjv6
         5Px9VL62vn9ZWoBL8/H0O9hI/c9dx06nARF+JRdIK0D8omWTmlYB/5GDogpSND030XPH
         l24A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=2lK4FLliJSE1LK6Cm3tUEbvYXQVE+W5JbiFBAseba2s=;
        b=vOJkh7wbO4HtOckkNzjN/KsoN+x0h148bRAQdek1UqL3GTOrQwnfbWO8j/DxABI9w/
         DV3R+eSpNFFe8+hTZilx/6WGh33AFssY0Eeon0VCcu0LzcKle4XjEC/3MVlpqVjnAm2y
         nYeKjtz+x4DAz48JrwqbWApVyZ6Qb3HzuFevO51nKgU/MwpEvUVtqQZL1c9mJGCCoJUF
         qmJB+GAhxorQGeqPYeseaw7NP38ZcTmc39khV4SnidfuXMdPZW4OHdy7rYQRJLbAfx4Q
         wFvNSIf5/Daa39AiZLjwX7Otg3+GUiplz4cf0W+FHCaMggpFeMirGUlEndSXEE4sfc0u
         SK+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TcuEhS2F;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2lK4FLliJSE1LK6Cm3tUEbvYXQVE+W5JbiFBAseba2s=;
        b=fY4iXdBqXlTYi4xnjeww6mw3PjYzSfsjOvY7Tf9RhKDLc1MHF6FnT3D8E2T84V2pry
         JDgQnMRqx0pyxJAO49p0h724ZdBUG+DcywmTztYq65RYXsH3d2qjIOPMT1LHjGDncqCU
         R5Bhf18t5zSuz1/jJpRm8suDuPXaIhnO0kQg5feWhV31qoB8oMrjdQWD9voKTifa1F+C
         QNlEK6ZP6pqTCmxhg5ZQFc5ttAFDFE707QgDUDwMeEmhQcfWCcVsP5zbV8epRdR3KT4Z
         11tP2rzd3mAbzl3EFD9YyHjRyMIlYfXhGLJlFrkpy0Hjy0BScf0lVkr+QrWCwQtEIDdz
         uW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2lK4FLliJSE1LK6Cm3tUEbvYXQVE+W5JbiFBAseba2s=;
        b=ZRhUPt+Ps2pdcBNNTDkEx3ZvR4wFzwpgYugrLoBIQM8vQ5rhMG+E/o0U5U322E/6J7
         Zbfl0tY7rOx/CabEHJhZwajChN7xBr7EJA82Nn67jqkFg0E7DJ7ClSpYK7rls73PCMTF
         jxwu1oeujrGgPqmfR+nY4Puz6jMy2eAS3xe8xfGkjZcjx2HYKLpnOdCY1S0MOT/eDtyZ
         rLFJVZbmuNgpmF7adMoPEPlnVX7zujYnNN73p13GzeF5ZGWpSyWAkErD9g/cDbLA4aqu
         Etcgq1pw/u8G+Srx994SvNF3ieFQk2Xr1fom+qZtfAc85rPHuLIvfYkl9rPGBUWy/Fc9
         8H+g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533zdBKECCXuf+GLcTu9K7ULaspge582NUTrHq2bv1d4/0gouUe8
	ljrTikYEoKt0WeiHuBDf+E8=
X-Google-Smtp-Source: ABdhPJxFRFP2CgVdSqj0ZyJBZ1PuYHkenv25grPZmU9mHBZYtuwkeQi8PPudjDiPD5VEtz1zXRRyQw==
X-Received: by 2002:a2e:bc10:: with SMTP id b16mr38668076ljf.157.1641230960242;
        Mon, 03 Jan 2022 09:29:20 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:198a:: with SMTP id bx10ls3452173ljb.7.gmail; Mon,
 03 Jan 2022 09:29:19 -0800 (PST)
X-Received: by 2002:a05:651c:54d:: with SMTP id q13mr24077802ljp.51.1641230959150;
        Mon, 03 Jan 2022 09:29:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641230959; cv=none;
        d=google.com; s=arc-20160816;
        b=lSx3Xsf7fHz8xpXl86s7bqa83ios3Qc+w3M/YOL24DXwgt4716eHWA7+DtREHsGgwH
         tFvjVzSdoSkY1qOwVnR9z26OToh9yRRdXHkg7KovFQYkNXA+geX0SHpRahPKj2bYFrEU
         9POgtc10hdZXF1q4q9r1euSK+LF+SfCAR4GQoP4dsM+sTYwcxuRmJcSDfh+6V/KuWFyk
         eZ+8pJ3bmupg1ExY548Xilh1tFM1bOZ3JZC9GgUoJtWXKYASerKzPF0ifGLP3oAOgw47
         hYzyRi9TbWThtLzruz/CQdyP5do40pSsiqliw6ch8luTEQfKNZbRpQmqsgcid1krLfYZ
         J/WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HNn6vv1C+cE3j15lJgf60smBTvy+zmD3yfL874mCZ/8=;
        b=SUzm85VX0YcK0P3E/fFpB4XUgYImdS8qe7iDzDD+VrU5Fp/nL9WfMnxavtbVsTt+Qw
         0b+fhz+zi/aE0x1xLQ4yJ/fmU+gFh5Ni3ZSIu6totdGqlO1AgQ+nIpo7frl0cU66vAc3
         D4BdmCylICvqpij6l1l7IkCbTntE2YqNF1BVKUCbdlBzxLQAPspHXmdlG9/MBJUSK2cl
         Ns55xsgXjCxqV0rjJtvSz4EwrVXjNjdIvErJkNzuXDPa8p1LnjmpUVmmeKXaTEqg+kDe
         MJme1yB1TXhM44SPAaYcNb1q9PjMdWfzsibrGd72dSlEc6L4YR/8L4BtKBCimh6Xxf1P
         Zzvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TcuEhS2F;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id j15si1340045lfg.9.2022.01.03.09.29.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:29:19 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7672F61195;
	Mon,  3 Jan 2022 17:29:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 614DAC36AEE;
	Mon,  3 Jan 2022 17:29:15 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.15 05/16] scsi: libiscsi: Fix UAF in iscsi_conn_get_param()/iscsi_conn_teardown()
Date: Mon,  3 Jan 2022 12:28:38 -0500
Message-Id: <20220103172849.1612731-5-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220103172849.1612731-1-sashal@kernel.org>
References: <20220103172849.1612731-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TcuEhS2F;       spf=pass
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
index 5bc91d34df634..cbc263ec9d661 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3101,6 +3101,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
+	char *tmp_persistent_address = conn->persistent_address;
+	char *tmp_local_ipaddr = conn->local_ipaddr;
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -3122,8 +3124,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
-	kfree(conn->persistent_address);
-	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -3135,6 +3135,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220103172849.1612731-5-sashal%40kernel.org.
