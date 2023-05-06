Return-Path: <open-iscsi+bncBCYMVIPVXQMBB7GF3ORAMGQE2FJXUHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 224176F9500
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:07 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id ada2fe7eead31-434890a31c5sf112461137.2
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415806; cv=pass;
        d=google.com; s=arc-20160816;
        b=UnpMygfEc5iLp08nZoKl8JJN0RprXWf6/umXP/zTejnCCfdNA/REsKGFXKhqt0utRg
         oJDVy+Gjdy3S3XeCDnRm392Hgl1J7sKeN77Bfcs/4itD25x8MIgWTzvwvHAptaWaZGv+
         t6QPcxwwmPs89wYMm6R7RwYuXpW6NR/C4yHm1ewmL2N7ux+ZeXlqw9pwXAmY2lLkW26B
         2hzmjeZFPUszpuy8AbdXmLbWCk6COqbZVhxgvRs9rndIwfyo/yWkCsUndDzSuYxIhbjT
         5ebRIbet0aN5MQZw4FjztWaotvZONYJIgbEw6vhGBZG/a4mRgoYC4525w+iDxLJPKWGs
         4LeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=IJSdgQbdJoOxgWKJIx4dyDctBqKcbxWf+/S5H5tvyNY=;
        b=My15ZZVhOwuAVgRmBNcONgSZH0yWx1GalIDo+RZYZ/MDqPMQIWNpZYsVdlE1ioydB+
         DaW2N0UeNOH69pn5CqrBXJJ4/qPzSmHp+FDYGM/Bg4JGG5qvLtQAROnCPyVdprkLviEp
         7GtSy3NM7g24VozetBgo+pac0XAKEpeGPkSN85dOevNQgd8oaKOGAhhbev6biDbXJriF
         Zp2KdlbshGIU0ELmiih2f8Kb9RR9L5PPdBC2gFQ01NP/8zz1y7AZaDMxKJM4lk+ndVcU
         FuxJyYZpkeER+ZmBA2lLfphRVPZsZEH19u3aqTz6M0IWnLINMZhbUaFDD8PESxU05fYT
         BPVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DLYrtZKa;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415806; x=1686007806;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IJSdgQbdJoOxgWKJIx4dyDctBqKcbxWf+/S5H5tvyNY=;
        b=a5g+GUCY1LaOJ16/Nd4BeP7vUr4oQZFF1NQnEOtH/afU1mpjB51etwmVBB2+yXZLqL
         DhHjAmyhSttonBbj2JK1OQG82YvmKN1oZkDXt/+f5RqsHRo6WpFUYDWTENnizLlpv4kb
         ijtR53MQA7KvikFgv4wRIDAGbKaMVehXVdN6pC9rTGa3EWXeVVF/FphO6dwRWkhKEZOz
         t4EyO9Fd2bWpoUPa42sbEhzQuNChixxsd/6WBzuYqXB0zpKsur2ZEVnbHmAN1rRENM5i
         WZtsVpeOtKGLNaJDYu3JfVMBUWllzumevJX4Rp0KXRC8rXpWCazmxqgruH/hJiSe1SU+
         vjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415806; x=1686007806;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IJSdgQbdJoOxgWKJIx4dyDctBqKcbxWf+/S5H5tvyNY=;
        b=gHBSmyX/XXgx6RwSMwO3K2ILTYQ98hH3UU0BU1eaZbau3/zCp2KqLb6MKLvHKtRqQV
         L2Mnod1jC4xKHfzutPdwzvhVqWDRj9lFVoKVDpnSwY9jTy7vuXrm7jfJVXdSy78RqDc7
         9KiNyEUKZhuh+gAj/LLHwAgdrEWgiGqkGJa09AfEe7YnGG6s3RK6yWT08rE/pw0vGXXo
         2T89tOzi467616r8QJ5J3MfvRu+gmA96T++Itmc91gSWuwbJpgWtXqEx+ZWq5w670n+/
         v8j8284YOgrazurqrh7sJ3ewNcujE9Qm77Vj91zfE7UhGJf7s5TFZpsdjsbX0tElBfB4
         8WUg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDyiTWtObFd3pd9N+aTrHI43Np3xb4mlPrkR+uybXVW2p8D+EKRT
	p7YWVz9wkh6UsYMZljnKBzc=
X-Google-Smtp-Source: ACHHUZ40PRjcee6kjbxHqZQ+2cHYZGzmWvBhbwexCJxKQlPOFNHJQKzb2O5fpdcgF4whdY2fmH46cA==
X-Received: by 2002:a67:cc01:0:b0:434:6f01:4360 with SMTP id q1-20020a67cc01000000b004346f014360mr3223752vsl.6.1683415805807;
        Sat, 06 May 2023 16:30:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:1507:b0:434:6ff1:aca6 with SMTP id
 f7-20020a056102150700b004346ff1aca6ls1633260vsv.10.-pod-prod-gmail; Sat, 06
 May 2023 16:30:04 -0700 (PDT)
X-Received: by 2002:a67:e455:0:b0:434:81b9:76a3 with SMTP id n21-20020a67e455000000b0043481b976a3mr1654864vsm.30.1683415804101;
        Sat, 06 May 2023 16:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415804; cv=none;
        d=google.com; s=arc-20160816;
        b=YjAoR2mTr64We34YAZCJZ6rbT0PkFwRvHk1RnhzkIAd4ofnTXL42ciMRRbPPdn6b41
         baY+vbtI28OcJoXBRZ1tumGhO5h6h1i+2Lk7ixXmwExNnAwrusYSngRumz879vIjVyZt
         eK28S+hBrEZ78UB/QpezpDsBKh5U+z8LgkIb4jA3GsJxP2Gbz97nDVpHOtI+uoEpZNex
         4c3c/MLCh6+zIAJ2bjeszKSPCZ9CKlE9eoDgxLx91QS+4evhkJ5oFWNDpzWp8dRx93uV
         UChBcvFROJOxN+p0kCgLdwIeCtfciNW/oYo6alL0qHD2+ATGsChzYFu5lJUTdK6AlMqv
         2/Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hqhmg8Av0eHkGffW04hqyQM86CV5Jf1/OdaPhsIJszw=;
        b=o/cgAj5ld0wMtze67dGztvInMnMSnDdV0V83F8kTdr8S5/++OiM9Ow/ulGDANHJQZW
         41PiJ6oOckkdKS8W5qQ6ImQwVY+jIKB+0R5N44Tgd6EVoP1wXDocB8LpL26AEej+FkTY
         tSFLoUg21hjZuF/AE5ovtOSGVDJIVKZ5dh38am8sQP+GVxaF+rHoyYU6eyFX9RraoBW0
         iq2ZTe8MUUPc0L1uU3m8z5br+llpQuBlgP2PGaMIf5V/c3O4qiNxrVeddGmE32EEctW4
         KDrT5jpeafGEloBQDLxAaRodq1Tdxq/958nEs4xE/bdKdXbJ1tV4AIQs8Z++aAhaw9yy
         ZNEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DLYrtZKa;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id x36-20020a05613000a400b0077df1137736si353190uaf.0.2023.05.06.16.30.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-372-Sw4aRg4WPYKqbogOMpK5Nw-1; Sat, 06 May 2023 19:30:00 -0400
X-MC-Unique: Sw4aRg4WPYKqbogOMpK5Nw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0E9F857DD7;
	Sat,  6 May 2023 23:29:59 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 294E6440BC;
	Sat,  6 May 2023 23:29:59 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 09/11] iscsi: filter flashnode sysfs by net namespace
Date: Sat,  6 May 2023 16:29:28 -0700
Message-Id: <20230506232930.195451-10-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DLYrtZKa;
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

From: Lee Duncan <lduncan@suse.com>

This finishes the net namespace support for flashnode sysfs devices.

Signed-off-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 34 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  4 ----
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 26b3d479b6ac..cd3228293a64 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1289,8 +1289,42 @@ static int iscsi_is_flashnode_conn_dev(struct device *dev, void *data)
 	return dev->type == &iscsi_flashnode_conn_dev_type;
 }
 
+static struct net *iscsi_flashnode_sess_net(struct iscsi_flash_session *f_sess)
+{
+	struct Scsi_Host *shost = iscsi_flash_session_to_shost(f_sess);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static struct net *iscsi_flashnode_conn_net(struct iscsi_flash_conn *f_conn)
+{
+	struct iscsi_flash_session *f_sess =
+		iscsi_flash_conn_to_flash_session(f_conn);
+
+	return iscsi_flashnode_sess_net(f_sess);
+}
+
+static const void *iscsi_flashnode_namespace(const struct device *dev)
+{
+	struct iscsi_flash_conn *f_conn;
+	struct iscsi_flash_session *f_sess;
+	struct device *dev_tmp = (struct device *)dev;
+
+	if (iscsi_is_flashnode_conn_dev(dev_tmp, NULL)) {
+		f_conn = iscsi_dev_to_flash_conn(dev);
+		return iscsi_flashnode_conn_net(f_conn);
+	} else if (iscsi_is_flashnode_session_dev(dev_tmp)) {
+		f_sess = iscsi_dev_to_flash_session(dev);
+		return iscsi_flashnode_sess_net(f_sess);
+	}
+	return NULL;
+}
+
 static struct class iscsi_flashnode = {
 	.name = "iscsi_flashnode",
+	.ns_type = &net_ns_type_operations,
+	.namespace = iscsi_flashnode_namespace,
 };
 
 /**
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index a23b511b6f53..a540e085de8d 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -516,8 +516,6 @@ extern void
 iscsi_destroy_flashnode_sess(struct iscsi_flash_session *fnode_sess);
 
 extern void iscsi_destroy_all_flashnode(struct Scsi_Host *shost);
-extern int iscsi_flashnode_bus_match(struct device *dev,
-				     struct device_driver *drv);
 extern struct device *
 iscsi_find_flashnode_sess(struct Scsi_Host *shost, void *data,
 			  int (*fn)(struct device *dev, void *data));
@@ -526,8 +524,6 @@ iscsi_find_flashnode_conn(struct iscsi_flash_session *fnode_sess);
 
 extern bool iscsi_is_flashnode_session_dev(struct device *dev);
 
-extern bool iscsi_is_flashnode_session_dev(struct device *dev);
-
 extern char *
 iscsi_get_ipaddress_state_name(enum iscsi_ipaddress_state port_state);
 extern char *iscsi_get_router_state_name(enum iscsi_router_state router_state);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-10-cleech%40redhat.com.
