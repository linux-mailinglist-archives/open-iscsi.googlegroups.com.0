Return-Path: <open-iscsi+bncBDTZTRGMXIFBBMPFZSHAMGQEZZFIGPI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E4E4835C3
	for <lists+open-iscsi@lfdr.de>; Mon,  3 Jan 2022 18:30:25 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id g189-20020a1c20c6000000b00345bf554707sf15998212wmg.4
        for <lists+open-iscsi@lfdr.de>; Mon, 03 Jan 2022 09:30:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641231025; cv=pass;
        d=google.com; s=arc-20160816;
        b=c78GPIqN3GwVsrZ99vgX8wOtPksTZb2NMQxacl2HImmAOaoZ54aLQomqDzITf1BUoQ
         QHL74Z6xgGPPkG7yeNff+tcbt1fSFHZ+DHUj8zWLRD3bQzwrtwnWbZpjRjM0pj+zJfmK
         BpyNgk8ezLLGAknn/4qLea/f0bJ8d+Sb/5o8gUGMTaU1qf3AEfA+v86iEo79I+jBpL5E
         ynQV18F80gXzwWsiBYXlXFVgGJ470wT2mRQAg6jBFnaQxtEYkqufasR3Ewzeqbs4yDUh
         d5ncNt29GmeNDdFxJNSVnpH1QS+SCOGfA/pN89HnUyOXZDqNR2ImMO1ZaKb57LFijtwB
         RzQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Ge/PGz97xaD1E6icaqNP4iVcSs8VGxbHibZ248uLN8E=;
        b=V0NUbvxq+sxzPL7I5u6ehpmvvvQ/kbOQjNDIdHAXQa5OlmXEoTwX+yNynjWj1lvx9C
         StN0fy8KvN8OacV2ZqGCo8LjUwEtPRkeNdOYtgbNAvA34ZGcGTsFuzi9lfnePHjefCJH
         ew/Gl+Cakc7hjdcvHa060Ja41JIKzy405Ubmcfy7C1Q2FrxXqf8REakeuZucTUE6ZOnG
         hHWFLmH2WJx7Z9juYX/E+jh7dgMnw9WhNR9gtL++DjQ4SyKuHRb1pPrbJKkiDt4cJcnu
         jaFaqg6n0Du/nMBMe6UdK0FQa4yIfIbFogp7NtoOng+/FJSNGqYKsr3u1/rLjXsP7BUz
         gcjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HsZsCLF3;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ge/PGz97xaD1E6icaqNP4iVcSs8VGxbHibZ248uLN8E=;
        b=Zaiop3gaKktHKaV1Gl+yaWJfYke5fUJeJRJgJ2fmo9ZpLlYhIfzEL2hVaaPFDXCICj
         SaNbLAFrNneg5tIxM1mZ2u6+dD+m0HPyTLorGF4Cj55fwVaBXntDlbBj78cWwFEopQSX
         xTykXneaqA8Sgwprk/rfI5Rm5osX1yhbdKa/IaUV+ZDQJ9wdIqg9aMUBVT/bqC/RVuEW
         MBVoFNxTtCoPQpL7eF6HCLxmQFPEeKsCokUPffdcUBL+YWW8ODf3izinAf93nZ3EGpHd
         q8CPScWHepbvQNoUYXScXN5rnAgfFuNZTl0eYKbdqZFMASjKCOcHElKULpGZoGbn/7yz
         yB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ge/PGz97xaD1E6icaqNP4iVcSs8VGxbHibZ248uLN8E=;
        b=tykM1A7uvTZcnTu562VH+NT7mhk9x2FXE0/KGcfX+qSxI+F7MHgrXt1Uc/oqFdZP3/
         DtkVUsc8F80QxhQw68Ug/68BEQbxKOjR3Ti9EC2NcVSH+41vU2iXQK5WDdYOqfyb17nx
         IK1JBxLqRTjD0b4x9nisBy1O9ZPvH1SAqoE1T12srwpLCWNfJlh6kURuC3AcoWlLttnH
         g0TESJDoMSJHzipU04ukNYMdPBvZBxStRG87YZjcwtmAr9lyp6tR6cVJ5Iwah9FPaCVZ
         F6W9tATDDfUpIJBNcx0cj8xOJ3It2DTEdx4tdihoDkMyXqprfRhUJkag1+gublqSOUqj
         INMw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532yr9USJBLuEiSbc1fdWsjQHWqhw9lRJHlWtB6VvJNOVoMoc+7t
	j+Bp5xyfp/0OexQpt/6in1Y=
X-Google-Smtp-Source: ABdhPJz0MmnBJcC+Ew6mFhncgT8q9DetUn99WmQ/Dbca2hUImJSM9MoOq72Npnr4SkWeiGHnIKjgeg==
X-Received: by 2002:a5d:52c4:: with SMTP id r4mr17650917wrv.521.1641231025222;
        Mon, 03 Jan 2022 09:30:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:80c2:: with SMTP id b185ls3907557wmd.3.canary-gmail;
 Mon, 03 Jan 2022 09:30:24 -0800 (PST)
X-Received: by 2002:a7b:c397:: with SMTP id s23mr38722012wmj.183.1641231024185;
        Mon, 03 Jan 2022 09:30:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641231024; cv=none;
        d=google.com; s=arc-20160816;
        b=Wv67aeoHiUmb55l+RcX9n8eXl3aNQ5Lg7O2FB8DU6SRb+/1G1MGnqRF49o+5cBiFdH
         fNXcIGvhbk4O3mLffyXP2qUAhhJcSKJu2ZR7SKvsqFNanmdrnXzkv/v3I9Hq3lESUrRw
         IVNYcS/p4zuInOY7kA6lQZwlLnXHGsiO+IHc3gu1i37/71ErGetXRww00Nvb66Yiy9c/
         +GHmew3vlADpg3QvSUKZgy4IURrh86NdW5HSwf05EjaFzfapuxBZT8gLLMf6iOo7ve42
         LVvw3+vJ6Mn9iAzyWsgnMgYkt+rCnTDqpKX1eht/9ngb9oYfTWAxg1sJvTmwUxM7kAte
         Dpgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ee8SGUUzHxmltS2RCwHjftjl2KWXpDQOG7wu3T62Jt0=;
        b=GpQi/wTS9MZOLybWgzvVDZdiFTyvnwl81suPKVtZ+8nRS4Eok9vw7JSx4aKWQqbZOs
         HITYoPtSZekuoNGp2mckCEnt0pR7qQz1wpGGRbLg9F7+TxVDVqrQ5Xh6zicjq6dOn2d+
         +nSppXKUTnYNottWRRKsZpQAANWBYKJdbrNlsicRtPT0Qnb7augw51opSbaX4tvy2LUV
         KG1EEHBj7NLWwjL0AR1gJNs/ZMXcIpWboldZQNfI9sQgV27e9OijeskU3hUrhaIFlyir
         i8U9pgafx/+We5G1T7XhIa/++XYoZkVp2+3wjTIEI+7XfdUbwKigC1+Mi8erztnMYUk+
         xbyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HsZsCLF3;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id h15si1680121wrv.0.2022.01.03.09.30.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:30:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CF599611A9;
	Mon,  3 Jan 2022 17:30:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C92FC36AF0;
	Mon,  3 Jan 2022 17:30:21 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 2/6] scsi: libiscsi: Fix UAF in iscsi_conn_get_param()/iscsi_conn_teardown()
Date: Mon,  3 Jan 2022 12:30:14 -0500
Message-Id: <20220103173018.1613394-2-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220103173018.1613394-1-sashal@kernel.org>
References: <20220103173018.1613394-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HsZsCLF3;       spf=pass
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
index eeba6180711cd..f3cee64c6d12f 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2948,6 +2948,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
+	char *tmp_persistent_address = conn->persistent_address;
+	char *tmp_local_ipaddr = conn->local_ipaddr;
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -2969,8 +2971,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
-	kfree(conn->persistent_address);
-	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -2982,6 +2982,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220103173018.1613394-2-sashal%40kernel.org.
