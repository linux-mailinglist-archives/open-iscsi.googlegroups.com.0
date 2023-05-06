Return-Path: <open-iscsi+bncBCYMVIPVXQMBBAGG3ORAMGQEBHF7BJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2466F9501
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:10 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id 2adb3069b0e04-4edb90ccaadsf1698515e87.3
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415810; cv=pass;
        d=google.com; s=arc-20160816;
        b=Npbhdzox1frG6aLe37BcWktYLmSxoGJghn5blNFb6yVfsW2BX6gG4PqK6U8kPaDgaL
         WDC/d5Og4LYvB1if12l0IAhFL8j48X2fXZ1grX6tb/YOqPHsx6hmO8bwzLs5OQVrfaSq
         koSmhjrm8/jpENhm60JtInObji+1PyaJjzLX8SLF81qbpwBRVE3WP6fBF1YpAFWVgQjc
         XpeA159RQRi6O5iMexnpxqkZMCfMS89kzYd4WWpy0YgRJlmHxB2OZrOnXGt/TTiAfFBy
         8BltpbJLILQnBHziO3fs2M+IHscHkptWqqjLOvGwnOpCbHkL0y6TmikDbYnyMkkEn7hd
         Gqeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=2lx5x1p3JeV+uBEVr15ubtLDyBRtFi2wOS6sG44/urU=;
        b=PQ8LIRq6WEo+u/vqxna+yGWH4SDekIwnmSVIok0tShQ7v9ck5rtt72vFrrFnzzkKRU
         4vB5uMHTzThztexmIDYfnNuyRnYydbZbkmUANZwDqcRneHcmsdqOLhrPWQZ2lwZNHM+r
         lnu1I2TCYJ4Kfxst9s45m03DR1nTyI+Q/E+E5swJw/F0vRr9qWVSTAg8/dxCOahSOzhj
         M714AFVGAuQPwZ+LpU5/DQXkhhHzM3AenLXNoSY61ufiu+O3pBX6jMxvSCTDm3spNtlt
         QDRtlBuiC9tXkXwqEFnvDvo9aJYmk+Z7wq7fZUtMfmj2lITHaJZJ9FXDd2EB4Hb4hI+b
         MkDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YIYvr0UP;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415810; x=1686007810;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2lx5x1p3JeV+uBEVr15ubtLDyBRtFi2wOS6sG44/urU=;
        b=EiQsQP4D/6lXWV+a1ENA/H2RW8vxkb49pZuMA12+jT9tOUIgiTDABonSVdcv1mhTlu
         RVQssEfv+nTHEo1yrmjSH0i0dYmZphwQeMaZLLHUJPov85i9R+Je5i0tLR+gfyL5cRee
         B9V2MAhTICu+KvtuewE08HCxfNzm1k/NHBdNtux2Fn/URkSvMCYRUNeh8Q+EXFjlMj+m
         vPAUMXMaSB/WDbS6oFEK9oZev4ChRe/qkGTSBKSm3SYlymdxrHVNGd7ZMV/M+41Oh4J7
         yY25enMuhqZgLRS06Tco726MeQvRmqmegiZo6RRWl122hID7Kn5GnyBtcb7xI9ekbo8S
         pGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415810; x=1686007810;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2lx5x1p3JeV+uBEVr15ubtLDyBRtFi2wOS6sG44/urU=;
        b=Ost7pic1878nj+Pngh0j2Brj9hPacKb0iH5uvOADXDAK0lhKf0CxzAKH8BWnQZ5YNo
         zrtrAdZKPpQ2scgsQU6LZGVcImJc0a4cqaSu8lhVxobblROqvRJj/6rh+/c3wanVg5A7
         et/eaEG8wUBhgq1ONf314FySNI1LYeKwq1U58uv41KjPEhs6XO1EJ/83CpuJJxWbr+cj
         hSwWueQUOWQrm+SDEix8WrXk1sjI8sic3S2r6cyOWxLBbzutgR+HwxbOqxKtburW9NJc
         NneughNPYyuqJ7KoCzNOlP62VfBQ24GRbxUC5iKP+Ca7UYyM59x+SVRseKI5HvwmbI1C
         CdhA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDy0bWm6AsZoekG+tNeC9lCE5ftIyHUOALEtSGHzg6Og1tKmtw9b
	m/sGU8O4SN9J+MpYT3KW/qw=
X-Google-Smtp-Source: ACHHUZ6o3OQpNUF1CHtR/4FmHDtjbdQFnbiBXM3gjAo8gDFq9Oul9aXGyKEppZCdCDpLnQp5Wy1AyQ==
X-Received: by 2002:a05:6512:92b:b0:4ef:9c6c:6383 with SMTP id f11-20020a056512092b00b004ef9c6c6383mr1353676lft.10.1683415809967;
        Sat, 06 May 2023 16:30:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:158d:b0:4ec:6fe6:9f26 with SMTP id
 bp13-20020a056512158d00b004ec6fe69f26ls2927860lfb.0.-pod-prod-gmail; Sat, 06
 May 2023 16:30:07 -0700 (PDT)
X-Received: by 2002:ac2:5187:0:b0:4f1:4a1a:ded7 with SMTP id u7-20020ac25187000000b004f14a1aded7mr1341366lfi.37.1683415807113;
        Sat, 06 May 2023 16:30:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415807; cv=none;
        d=google.com; s=arc-20160816;
        b=tQSk22+aXhAunnGjPRblOrcnKWi3wllg47RpejQ1XQ5WKAGZG6KIIJJfF1t9o6+3dt
         6qCxNdi8Mii3i5XdFSBcHJpnlct6Rb0ipMtMKBJXmaWUP23Y8gEh7Ac4xJhPBi4O38L6
         EZLcdPZyD2dzZZEG1NuPyL1xLOqURB3meRSRi5ebeObmFtHh8H0jYGfihGBNDqqjdwon
         qpnMPnEuer7pNJx0INECP8AcjiyQNbEV0gd/+qNRRQZIj6hTLe/4Bn57Zqpb0K0Meyhd
         FUIUGQj9iyP/A2zjKNVaY1FtduAEQGvG2F1gfcJ4de2U/WrI5YAMpu40xPI1h+SbLSYa
         kWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FfaTz/2MrDTTsMWsUnYC5jvyRAk9JjCsw82BS68rkgY=;
        b=eSVSD1PheqF9TyMRVJUz705Sh9sMq/u1guJFgvpkYF0v04ca3B9TGKGcDgECEZ+WNu
         VTG+evUSXLfUcaidgJfWiK9ljsN31xE3jOARW26MvbSO/o5Smhnc2R/MJhOccfH4/JZ4
         NoP403n3phTkYANOBe7mkSB4GHdlBDYsuUXH/IkJGqpR5B4n4y69Fg/wZDLyu8leEsN6
         W6FRR5zmuVmIp/+dul0JIITuNjAvjH6IvSbsqyYqekdO8nvzbPT1+BZ5vxbXmSCc432Y
         rISqaZOMn559nPu3R/KiAPpSuepIDAU51XiIFP00j3kIhDdadZKwTo0cMLsWUlb/uYqW
         reNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YIYvr0UP;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id z20-20020a056512309400b004f194563eb7si147108lfd.10.2023.05.06.16.30.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:30:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-668-9PcE-jBHMyeYo5I4A6zfxg-1; Sat, 06 May 2023 19:30:01 -0400
X-MC-Unique: 9PcE-jBHMyeYo5I4A6zfxg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 220703806700;
	Sat,  6 May 2023 23:30:01 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8E59E440BC;
	Sat,  6 May 2023 23:30:00 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 11/11] iscsi: force destroy sesions when a network namespace exits
Date: Sat,  6 May 2023 16:29:30 -0700
Message-Id: <20230506232930.195451-12-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YIYvr0UP;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

The namespace is gone, so there is no userspace to clean up.
Force close all the sessions.

This should be enough for software transports, there's no implementation
of migrating physical iSCSI hosts between network namespaces currently.

Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 15d28186996d..10e9414844d8 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -5235,9 +5235,25 @@ static int __net_init iscsi_net_init(struct net *net)
 
 static void __net_exit iscsi_net_exit(struct net *net)
 {
+	struct iscsi_cls_session *session, *tmp;
 	struct iscsi_net *isn;
+	unsigned long flags;
+	LIST_HEAD(sessions);
 
 	isn = net_generic(net, iscsi_net_id);
+
+	spin_lock_irqsave(&isn->sesslock, flags);
+	list_replace_init(&isn->sesslist, &sessions);
+	spin_unlock_irqrestore(&isn->sesslock, flags);
+
+	/* force session destruction, there is no userspace anymore */
+	list_for_each_entry_safe(session, tmp, &sessions, sess_list) {
+		device_for_each_child(&session->dev, NULL,
+				      iscsi_iter_force_destroy_conn_fn);
+		flush_work(&session->destroy_work);
+		__iscsi_destroy_session(&session->destroy_work);
+	}
+
 	netlink_kernel_release(isn->nls);
 	isn->nls = NULL;
 }
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-12-cleech%40redhat.com.
