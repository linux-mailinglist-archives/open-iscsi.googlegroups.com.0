Return-Path: <open-iscsi+bncBDTZTRGMXIFBB2XFZSHAMGQEMZTVAUI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F0C4835F5
	for <lists+open-iscsi@lfdr.de>; Mon,  3 Jan 2022 18:31:22 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id s30-20020adfa29e000000b001a25caee635sf10545060wra.19
        for <lists+open-iscsi@lfdr.de>; Mon, 03 Jan 2022 09:31:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641231082; cv=pass;
        d=google.com; s=arc-20160816;
        b=ohbM/Yv4GzHZ4X4rydjVjbmh4psmVHBYHvzA/r3L5Q7JlJhnFXN6NMONdDUwFO9Gxx
         +C5NxxdA0hzBYDLyr0P607KL4Wdvb1PgePey/ZlpNv6i+CoPxAtOQOft4UwjbKgqkMRU
         wEmlyWvAz4fe6ZZUC2WP32v3VGzbRHRwBZOKtw4a1sGWzJCDafTehEEB+ipemr9jMZXj
         R5O2Rb2GcUnIYWs+HXW7uGU2sbC+T7f9jp1s3lPHWydYqpZ+YKmP9czkBFKCX7bJb/qg
         sSWCIVgQM4pYxZwSiw3BEnfb01Y8s7auVfX4Wxs963pFXgwvNEQeuSy23eD76UmxYdpv
         WW6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=LamFTOcyz7p/K+3EYDLrRBPWNT9t6WH1LGV2ggwTlOA=;
        b=f6heL77FYXZVhKlVdPLzNLNM7tZVRFcrninrzX0MWuF2BSsgri7IeZMt1FDlH+tH9p
         8USm91brHROY/8cWkm+jFP+F2wDQUPihLToxtmPsxadCtnaYDfc3cUhOVEYQ+z8ifrxk
         erGhNAxO6nto5LvhqclWnK6wa6tYYIxQ9xNoVCvvxT97W+76I5mLN1jA7mQ4+qo2Ejph
         ILa6tKZ0zo7nBD+2I3LJdya8/oXQGVG9pcXzOgtTynBg9ZfNa3PNsaIUQLGOBCmDa7D5
         BOXLTC9+5hMnRNHhn7KUP+ZYZnprZFpyHpXdNzYR/Kao5CxwQFjWgsjkG8g9DdAX8XFD
         Qubw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L1Xmr4Ax;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LamFTOcyz7p/K+3EYDLrRBPWNT9t6WH1LGV2ggwTlOA=;
        b=rYtigeua9MjcTq45sPZVmLiFpJXuCtENcTnagvePmYWnPh4IfP9dBM3nvmVvwrTHQD
         qgfjBVJRz4f12E+GW78sXUiclsorW5y1SOSYnyu30ImMsnfdo1i76rz1WERz9ZKiYfJR
         CQ0oXZM1ekun4dUrdX6e0pb6FR6GIDtiFCypeYeMlyYEXv9Y2VNx4H99sx+XHIYq6w7O
         YDjqAzHfR/45ROqdRYtNMhLfI0gVMQPTgWb1eJ3uNNIQusGtqMc/172mw6M0uOdD7nl3
         gc3mozPnC7ZgQ6q9lp+gcYCSOHX0q5LidpeNCTTBUtS/TbG3hqcSsN85GXDpq7E3rvvU
         yTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LamFTOcyz7p/K+3EYDLrRBPWNT9t6WH1LGV2ggwTlOA=;
        b=tNCOPSVQ5VuIofoRtUQXTlJnJaVQXMuQJPCrEt3XbJTkAwN0U7spuRcMiKET0eApWh
         MoKLx4iTkv/WFbWX8Z+O4axVc9xMYMssevzJDUJ/aI9nhJK1EsN1APAeqdfCtTAvzuvW
         x0RkwnKFA83KUfvqfB7NcNnyYZqdgxdzWiO+s1OeUqqJbbFDiMl89hDP5sOgwza0whlA
         B6MDIOovc/eHsGLdeyREg7Sg+BAUlZgA5Pk2nNQ1TYkjiCZMsF6RtlRPxQMvAhU9X/yF
         EudficTTYZYLSB6gmryJbOx4ljukhyQM8xHJMTVwIC5VfuA7GI79NepCoaUDE5cOWDLb
         Z+cw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531moBX8muRyLItfAFWxteG1HsBUKumzGXk/27HMG+FAgwG8R1l6
	dRMXIxmRv9RsKxjxEB3Fpow=
X-Google-Smtp-Source: ABdhPJzXgc4Pd7aAbV3QGI+5kYt0HoA491lfnkPIFlWnxxqew+QUZVkujmRstdySRGIhLthF3NHydg==
X-Received: by 2002:a05:600c:a0a:: with SMTP id z10mr39136865wmp.126.1641231082716;
        Mon, 03 Jan 2022 09:31:22 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:a4cc:: with SMTP id h12ls543392wrb.2.gmail; Mon, 03 Jan
 2022 09:31:21 -0800 (PST)
X-Received: by 2002:a5d:660e:: with SMTP id n14mr39376266wru.613.1641231081749;
        Mon, 03 Jan 2022 09:31:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641231081; cv=none;
        d=google.com; s=arc-20160816;
        b=toJ0jfOK8wtPzorYVaRPB/0BQf/oLFF8+SVCkZFuvw0STt1TzmCkO88Q5aEskMnsYs
         TQMs6Vw+2QrQ0pymVabTtyoJIWBr930zjQsEQudM8sb5k1AyHyQNbWR+VldHWLhkTSvh
         enByzLDNnG9uqFOOeYUMaJZOX6brzbuwGdWS/JpgGgH8MoEyOtSFwhytRIJC2vTCbz4M
         7QGVW3Ri681+vEt9Y+Sqrv4ER/cKTdvAOD1be7Sgs//MkY4vzEUPyIRpwojSQZWPFS9i
         jm4Aa1Sxq8G9Fmb2VKIN00lhjaXIqSJJPzd6Ku3h7FGjxt780Q/YkMaRufeGrrs9ZQov
         07dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=anwjbiRwsYUVMfKObX8JjeYVa7ykXenVIHSMc7FGACY=;
        b=Y42kPVkgwyoQYNPRwRDvsBLlxNtN+WhCJY/875f3HzfRBqj+4zukORX6lDZLrKaNuU
         +7USrDZMfMFgDkaQKENxOMe/DZY3a1WYYCJaXqN3sumCFHgQlawXmH7h6cpb+kv317+9
         awE+h2mlBbzb2GO7sKiUBCSlDgONMLxdx1UzlTupJwc5tHogDktl3olurwaaBBBFRB8B
         2h72td0etvWa11zVW17bwJFFxcN6H1cXN/8jzrDaPHbYCvzFHxI/uwm0OEuukR6976pH
         C6Ls6GKwZTp8wEin4liSTkgkksRj5AhIPsuipWXlTHQ68Qq+PHDX1hPWurPfrWLKqiit
         R8nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L1Xmr4Ax;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id q193si1384339wme.0.2022.01.03.09.31.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:31:21 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6A5F4B81076;
	Mon,  3 Jan 2022 17:31:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61375C36AED;
	Mon,  3 Jan 2022 17:31:17 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 1/4] scsi: libiscsi: Fix UAF in iscsi_conn_get_param()/iscsi_conn_teardown()
Date: Mon,  3 Jan 2022 12:31:02 -0500
Message-Id: <20220103173105.1613707-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=L1Xmr4Ax;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as
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
index 0713d02cf1126..b1ef1aa4dd44b 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2994,6 +2994,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
+	char *tmp_persistent_address = conn->persistent_address;
+	char *tmp_local_ipaddr = conn->local_ipaddr;
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -3015,8 +3017,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
-	kfree(conn->persistent_address);
-	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -3028,6 +3028,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220103173105.1613707-1-sashal%40kernel.org.
