Return-Path: <open-iscsi+bncBDTZTRGMXIFBBPHFZSHAMGQERU2GOFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6692E4835CF
	for <lists+open-iscsi@lfdr.de>; Mon,  3 Jan 2022 18:30:37 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id k11-20020a05651c0a0b00b0022dc4d55f14sf8449289ljq.22
        for <lists+open-iscsi@lfdr.de>; Mon, 03 Jan 2022 09:30:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641231037; cv=pass;
        d=google.com; s=arc-20160816;
        b=J9ur2QgpATqILvOQo7uyQPminP+CqR/wcfnKyPxFpUlnRvIZ4QHbtlliGja7AaTAVH
         HkftvrhU+q+nPrUUGIjpJf6BtjsXVYfErF/gpB4+BmTBJbTS9VG+l/af3Yd6/swBQLNG
         UTsKh+PLkPNcNeh7W+aUZrYSji1/IVliB3xjkruXOdR8V5YAyRGqcJn47fNZ4udn6zaD
         0d57J10V/DGJzxKhx4Dg7SukJW1LVLp6s4+8ZJwNsD4U06y2fiWhDvUxBsQCKCHwZDel
         ztb0U/Sp4/+zNHRWYCYYLDw8xMnxiY0W+VNGa4pmkFkyL5nE3tjw+s7VYC75i3+uTROR
         Lx/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MVf1ZNKmfljBFdYxm/O8rtgfAYLPjWJCHuLa2gc/SZg=;
        b=oyrasNrMVPeFMnsK4UsFhxdvhV4JxjqCuB//wy7ECXGWjSaz2MKRalUAKId2H42tAY
         HlXOkez22QL2Ok1CVtnJyAESpmFkDndmhbGvSLH07E7rtVbcxX410jupmGbPBSQvWQSR
         tsuFl/QYIb621cmG49v+dW/0wDMUaFJnBsc7Q8CwqVYk+wsP6DNKFanI0Sl5+E4n7LO/
         4+6R8RtX9p378OdeaHK10lsYoXf0HKXoHkpEbXuFEqmaGmElrWvVzyXIPerFsn5tO510
         /Sg+G1s/4+anUcTkFPaLpknmInye3im7feu5UaxHosuufz/DTIr3hCISKpLmbSDLzUEv
         /ZHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UFX9Sh16;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MVf1ZNKmfljBFdYxm/O8rtgfAYLPjWJCHuLa2gc/SZg=;
        b=Ce6POj7zIhVS1Pk7WFG1ORDkgus4dZBamVzpC1YGlC6yWRMKY90Td9ask4gsJVrMSY
         D8r/Ob7VT0HlTsWbN6zy8q/6e5TXmVEYviEZW7K2ShEx/nTb3SvH1NzK/oCAUMb0u5e/
         De4aTYX5B9FV6vpBspCHM+CYSDrYe0V4s0NFD3U2L7y47wqcXOc5KsnUPcmZUp0gMMdX
         PttPiHpyp4llAiyWl+m39mwh5GNyEKf80ytHEav6vaJIHB0Z1fg76kwY8SiXSYx1Qetw
         veZs+gN3J18B5F818zP+sah9zWL01pTuHPg57fwMuyumWctL63wkmG6XjPEOD83nJ8lE
         f62Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVf1ZNKmfljBFdYxm/O8rtgfAYLPjWJCHuLa2gc/SZg=;
        b=1Er7gkvQM/P/nrvDl6/1cYhjj29FSWKXVHqEbQV7jdDJu97EXtzfPl4kdr/D/M2Zkk
         TA3vtixan+yE+8812X5gMbJqkqhy4Jqx1bpiaUDPyVRG1FvWUxqgc1T1FBoNhw7qNkUf
         +e9vFI8+mfWQyW/o1Scpo36MZbdu7xZnXsYTvY6fiANxu8lvnn2H0gW/ykNuTkhKkQDW
         e5h5Z4zCtwQKBk4XFDI2ocxF3hPRoPRAyvXbjrS8vry4qqk/FhWWJHVA4LWNGlqQ/pKU
         x3nDG10LVPXyyRRNRY82e1KFJTwOP2jQ0uZflDLCGNZe4AOaBKR0LtctRC9Str84Ub66
         Cj1A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533+Fqdamd9Q7tuviasxudx6qorv5sMtBIvSq3iruYJxIdepk8TC
	hXM/WP6xCyauzg2cE5wwF5M=
X-Google-Smtp-Source: ABdhPJwLeIAZ/OlUS27twM/xNtUM4k844b2EhsiCnJCazpPZpO6fH7cO9on1cHbavzU08QCNt3e+hQ==
X-Received: by 2002:a05:6512:210f:: with SMTP id q15mr29349541lfr.112.1641231036988;
        Mon, 03 Jan 2022 09:30:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5304:: with SMTP id c4ls3309190lfh.3.gmail; Mon, 03 Jan
 2022 09:30:35 -0800 (PST)
X-Received: by 2002:a05:6512:22ca:: with SMTP id g10mr39105953lfu.244.1641231035884;
        Mon, 03 Jan 2022 09:30:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641231035; cv=none;
        d=google.com; s=arc-20160816;
        b=KCVsxDgO0G6JQK3rlFXsmI5hGLQrubKzRvFbeMSjH2m5jL3SgWud2Q5m5JmpHhqY57
         UuzFrYDHFKKcvYPSRB5LLfGkBndm7Q/kNQz/7LWDNze15KR4hkNb4ptKwbW5xSjB8j8d
         EQkmhSj/+4YRkaziDk92zu1/R4LcUGvsJW1jhtWmTKiaQAH5hI7i1yjYvihrcm2kWZRw
         StkpwlV12Q/GLId9npsCP1vWyQnmMiaSGgHuUZnR/MEApCqc5lI2VHX0MhY6nf3X3cZx
         D13TUbQKRzMgsZwPUiY0/WImtu74wEHpY2NNd+lVuCSIvFEJ1UkwjLN8BCb2XR5cBZqF
         ZrUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qPGZcXoaUMWqtV6/vi4eiL4pFqhJ4deapACYKqwE9J8=;
        b=utR9MUNy4+1QLA9kR6kqKC8OHdGFoaroI+95u1j++m32i+w2czCPbAcujp1OfOiblL
         ZG7CZEYzmXXkinx27bZfbQbcgMF+x4DgxaVop1JAlxt77x5/JlFObQk8YmKcEj2d5lzA
         MWS4VbEaZF5Dcv9qwI5s9H0JIS0qNmWZb1SDyysacHQYspH67xLsSyogQE4PvHXVDPZT
         dASvdRWUWWId2qRr2j/w/TqNrvIunjYl89JLtExVU/P1g6K5tS4RoPJLdRDpJ8PspoQE
         CL4XXI+Va4PQIcqNPxsUpsuHL5m2nvLDrjorvu0qJ8k18dcuPgWk8abO2ZEeoylxbYky
         3P2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UFX9Sh16;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id d1si1489183ljq.5.2022.01.03.09.30.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:30:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 626CF61178;
	Mon,  3 Jan 2022 17:30:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57097C36AED;
	Mon,  3 Jan 2022 17:30:32 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 2/5] scsi: libiscsi: Fix UAF in iscsi_conn_get_param()/iscsi_conn_teardown()
Date: Mon,  3 Jan 2022 12:30:26 -0500
Message-Id: <20220103173029.1613474-2-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220103173029.1613474-1-sashal@kernel.org>
References: <20220103173029.1613474-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UFX9Sh16;       spf=pass
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
index 5607fe8541c3a..cb314e3a0fc7a 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2986,6 +2986,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
+	char *tmp_persistent_address = conn->persistent_address;
+	char *tmp_local_ipaddr = conn->local_ipaddr;
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -3007,8 +3009,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
-	kfree(conn->persistent_address);
-	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -3020,6 +3020,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220103173029.1613474-2-sashal%40kernel.org.
