Return-Path: <open-iscsi+bncBDTZTRGMXIFBBIHFZSHAMGQE5D2KDTI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECB74835B6
	for <lists+open-iscsi@lfdr.de>; Mon,  3 Jan 2022 18:30:09 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id v6-20020adfa1c6000000b001a26d0c3e32sf10474478wrv.14
        for <lists+open-iscsi@lfdr.de>; Mon, 03 Jan 2022 09:30:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641231008; cv=pass;
        d=google.com; s=arc-20160816;
        b=VA9NkABjrYUJ3WY7XJn9JOCy5uvSAhykQj23RmlaiGT2p0UdfKKqj5nYwRu/ujgcoR
         5+hSqHccfIm1p9WyrStkgRjSoSb8c+3A/rzxVPHJRIbE6Qq9J59NGMJ65zzcSK23W5LT
         bmyQOIn/Icxw9A+IGSLx6fnUy1ZPniLhKvPwosNZ7QpJRvm+bZgyKm3WVbOgz8VMEtz8
         7Xap5uU8k/OoqoMGqVzcxhVJqUh0mL+WdEGno3dYctUmA34xE8gri+cA0nES1c1iYKpp
         8HSh1j00MJGZAyI18XHbE1OMyyi5laFOnpY3uv8iOqhMpH00+P0eYpBVI4aiml6XEYyv
         O1tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=30K0rtda9yCj2gCDlRQxeY0dG0GntFH6EIlMgYywImU=;
        b=EYieKl643KikxRdlmYtNsCPNdDoIX2HTvSHrp7nfWnErW3DKcHwieAcg0kqD0GWVSl
         zUniGRHXlH4AtPeuXhMYlIhA7MnWftxBxXqvdeXqyrfifmUHpWYDoiuPj9sZHpav0Z0B
         8a5wZeaIxeWQ19oLf7QRKQaok/l1zzGgloziTNMXv9WKsw/RSem7g0cLBwPjutxP5+5Z
         7poHz9dnGp3Bpfr0jeNUrt9UPp+vJHpGbjrvRK2x1OpYCNmfA3EGtKpeEGvnX1ZYCvru
         vWQRCHDuMcx0Tuv4O4RNnTXx8pyrBcWS8Wf0uOYxHExpo3jzoXbsmiwGtsBXxM3VL7fQ
         MZTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jdvk6XOI;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=30K0rtda9yCj2gCDlRQxeY0dG0GntFH6EIlMgYywImU=;
        b=KgItbp7oRBwRg3r7JhFEWJqX/u/S8kHeLV96nfybkasZOL/aecOhmbhdO4aeTWsVMm
         boMiorNqEjvjlHGOef5tpt8IzIAbEdSj7KDDG9Wkej9zOA3HcbzYIbMogU/ZpiUv1bFi
         OZO1n3nopSG+QqmJGwdfiZg8OUt+td6wHzP68uETsF5AOuRKBBq2d2QScCJSL2rKOwQh
         2CWh3bc2bIcPQUagucikeGst6UKc/KeK+SZR6b9GwkUUaKkxhEtSjb50Oaq4onxUi0Og
         XWdRJJiY9Am4UWj/Qnxc+CoEXo8kWyG2a9NGvzmZffgDFrAZMUI0/XJ0rtoS+YHnWQmN
         2Exw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=30K0rtda9yCj2gCDlRQxeY0dG0GntFH6EIlMgYywImU=;
        b=E+mkqb84+QaDw8m2e5Y0sCY0W9croIR0KQE0IB2weVqnH/I78KjDpxjpS+AYgwDEWy
         9V+cuia2FjSXTg2CXYW8vrKoey1UPNBNTETk7f6owwVGJj9d8TfnqT/2fNgUdJ0yLYoR
         24EiNA5kguNhanQhhGbqXxZrpOYKABAGs2t86iLT4Y4HEbnGFITRXHaIyq3E2yzrpJ9e
         z1PliSkz5TzAICnlihBgR0iR7wA4QC18bgy5MYLeCNo3a8ZIdeXuClvoRD5UYu6hutyA
         ZXS506AkIv/0rJIsULaP1vIN4qzgIfH7FH5krqceGJv0NUl4nHW/+nvadkPd4MSfNTiM
         OIbA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531BouO1zP4VbWybExjlDUuVAuScVLtrM82kqZNgFhXrEugFrgXn
	D2PkblcJVpJP//f+rV37Pu8=
X-Google-Smtp-Source: ABdhPJwMEGt8sdbs5wQn4CUyPd1RUy2Ocat/TFKIz0buvdMp2HTNzE4Rq6oQFb7qGps0YC3qM/LQWg==
X-Received: by 2002:a05:6000:1085:: with SMTP id y5mr40565159wrw.696.1641231008653;
        Mon, 03 Jan 2022 09:30:08 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:d21b:: with SMTP id j27ls539711wrh.3.gmail; Mon, 03 Jan
 2022 09:30:07 -0800 (PST)
X-Received: by 2002:adf:f08c:: with SMTP id n12mr39282770wro.598.1641231007691;
        Mon, 03 Jan 2022 09:30:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641231007; cv=none;
        d=google.com; s=arc-20160816;
        b=baGSEaBb/g1pjcnL9eNFdwpElrERaQWamPcNyQSpgdL/FGWf027CmprEqpt3ZkO8H3
         nv0jrXO370nSMgVVvB7mqUO9P3+R9xziLMzKweAbAiSkQu3FZTFA0Z+Uar542MlS3z+u
         8JdbqqpFrUV2llBXDU4qIPIoDah/vmQ4U8k56OmhQyQgB7DgNU+8H+fdnHze1fU0zyR0
         AFiyI3CbyQuZYhbGTSJ6OYoemXRnhlwBagD1ltXdi2XT3Qwm/qMd4Zvaz2SyvAWFVVNq
         IxIYGMIz6nxtiwSc57Fiyr9NrxdzI8KW8sj3HXgoO0e2fdQHk3xgjGugbWlj1T4drprI
         9F9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qx/MUtQ8ytPp1mtNjA16GJf/Phse2rFAkDNvEHRJaQ0=;
        b=Q8R06ZwNrZmtAuPHVloRavgubYE9/4tIcEj8XLlfcZ/c/5oa+PTyWhOrD6jXsm/OgK
         hxquao+Md+/DSFe+Behy4A+CuTegHbOjOlzjwvcbT2uprmFCs5J9nHjoeg6QuZD/Dwra
         QVIWGi3kgncNblKfJM1GfkT1t0fG4Nh9i8i4RBvA9MO9SPB0bmgVMBm3Q/a7FMQInmS6
         LEFpza9o04NsjmBxksE88kNp+uPoAZzlb8JzaG7Be3cpyMYwYWitpZKE8EEslGhFFiYh
         DQOAtFvjkq9NNMJfq3g0aqmkT4OvkEUX7947EnNq7EBGV4U1+qAOE3/N0OQJbHW/+6sF
         RxEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jdvk6XOI;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id f14si2091752wmq.2.2022.01.03.09.30.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:30:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 665576119C;
	Mon,  3 Jan 2022 17:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEC70C36AF0;
	Mon,  3 Jan 2022 17:30:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 2/8] scsi: libiscsi: Fix UAF in iscsi_conn_get_param()/iscsi_conn_teardown()
Date: Mon,  3 Jan 2022 12:29:55 -0500
Message-Id: <20220103173001.1613277-2-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220103173001.1613277-1-sashal@kernel.org>
References: <20220103173001.1613277-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jdvk6XOI;       spf=pass
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
index 30d27b6706746..d4e66c595eb87 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2950,6 +2950,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
+	char *tmp_persistent_address = conn->persistent_address;
+	char *tmp_local_ipaddr = conn->local_ipaddr;
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -2971,8 +2973,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
-	kfree(conn->persistent_address);
-	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -2984,6 +2984,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220103173001.1613277-2-sashal%40kernel.org.
