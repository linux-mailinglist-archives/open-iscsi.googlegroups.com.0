Return-Path: <open-iscsi+bncBAABBNOE2SNQMGQEGJU22NY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E5762C6BE
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:36 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id b25-20020a4a9bd9000000b0047679132f18sf6932131ook.21
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620855; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnOp+zi4lo9Veu2OvMP3g7CYUnI7ECKw/hAo8Zld+at3nsJT7Eed2R0AMuRHmTbx4S
         G9BL+IVHeG/hhPwBZOAl491drzc8tz/SccWXN7DTo3V7zBlXeOJaqtJ0+JENW77FH7xH
         vUgQYBjGVQRnNKFOkjmC2Wwjeceal+hzZfsLTdvVLb4Xp7BZEG0bFJViaF0pEpTEX9AD
         iuTFOquAr8AiYq8lVwWq02WOAly7XcAemXgFaaSgdKOf8AQaZ8OP5H+EL9Yvr7zdVfGn
         Orjx87gZozhL93BneuwfEC4m3SGMgNibnXJVTcRopOZhcw5pvx0jRbA8FC9/VfoX/8cB
         X4oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=HGLHrLprFCo7CS2lvfF33qZPENBBSNLVlEoT2wlpCX8=;
        b=R3FfPsb7u9rGDG907Ra2rrP0q9WgxgnbcHdUdKGgLfOckhnCqBh2i9+9TryWv9ahCU
         A73leNrRptjb1Tv3QlxBNZEuiTcZa0iYfUbQifNPFlRKQCJGZ6bd6KlXBtyVhWeXdOy3
         FQOjOqnq4Fz62NK3wzAVA8AvWq9bfI+Mpt2hqEZNijDc4d4MZBZaU+XUbv9r/gNE2kLb
         spdRgZ6e8ch36HFs6vyZimTxFzBscAdukBQDpyE5coo2aDD5H7XL6KmxI646pzFPLqTx
         iDk8nWJqqcTJ5iZiS1Q8oxkGmAFGJaBi987/3UjlBxbU9Qulqj2oipDzJbXdiWk8RFJs
         gP2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HGLHrLprFCo7CS2lvfF33qZPENBBSNLVlEoT2wlpCX8=;
        b=RZCLCdDs6s7IURW50LijsyMFynbBc494MuyhF4AZlkh9zxe4bOLBTFjYWiLaEbaofv
         7EHUOATxB8lXlJjZiZxZcmLgH3Phh6wsYPexKQXgYCR1/Qj/YyTq+MCmshMIvA0+WC6L
         dhnN6HgawtGTf+TivnP+QOMYIZ38Yhb+6qqr4+HEkI7RQaQYDB3C+FXZCvm8+Cn+ghd6
         cBQzn7cB3O1iyUU7FJ6B1dueHIVfQhNOuBneZrwoSK+OnaX6ylw5iJB+8YwEFNID4Ylp
         3MXPp9FmHcjvJFyFViPTm5O5V4Lgs2dpNim4rwPqkf14oksv6znbfI6TVpQMfwCX49KB
         /ulg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HGLHrLprFCo7CS2lvfF33qZPENBBSNLVlEoT2wlpCX8=;
        b=em6MXWAjEOh2cEY/vIUgTiWFN8mUonIcHKYd4deiOXIyOaJ5oDprxQ0fBE5CbBsFPB
         0Nq1YhFid7BoUTXMwabz5kSBA2gVijH9NHp+ajV2gHQ+pMnJQMQZTWWi8o8in9g6ne3S
         n9qvuCPHLMl7quuRn+4h348+0kivLRy29Kx9hPXvOwnLcmg7LAKVcAULVLgPBQXmGKfN
         1pzvbE0VVIOgR4KN1udO5VOOiy7SR4obEFnp1oeZzfdCNEAL57ZMacwByJCRrL90IIBp
         sr1WiMK1rlxj4FO0NxAVpxXTxBPtsQtcSOPSkddlPVXQ4sJNU01HCm7ovtOlOFACUcqQ
         +xtg==
X-Gm-Message-State: ANoB5plP0Lci1LVp0MsURlCp/aZS5ky4EoaXYM4RH8r8+tSUnq0uUlJs
	KQKlpRl0LfaEUDrwmIhB658=
X-Google-Smtp-Source: AA0mqf6jN6cw+y9SeXxtphE1CyJjBnGtLwhnHNVLdWv/xiqXijxsU5DyJjldAmM4aZCKGqX9UTnKZA==
X-Received: by 2002:a05:6830:a92:b0:66c:96fe:a494 with SMTP id n18-20020a0568300a9200b0066c96fea494mr11266341otu.254.1668620854819;
        Wed, 16 Nov 2022 09:47:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:b1c5:0:b0:354:6639:a1f with SMTP id a188-20020acab1c5000000b0035466390a1fls5697464oif.0.-pod-prod-gmail;
 Wed, 16 Nov 2022 09:47:33 -0800 (PST)
X-Received: by 2002:a05:6808:1a23:b0:35a:c6c:b8a7 with SMTP id bk35-20020a0568081a2300b0035a0c6cb8a7mr2172871oib.275.1668620853319;
        Wed, 16 Nov 2022 09:47:33 -0800 (PST)
Received: by 2002:aca:f1c4:0:b0:354:5eb8:7380 with SMTP id 5614622812f47-35aabb7d365msb6e;
        Wed, 9 Nov 2022 19:39:39 -0800 (PST)
X-Received: by 2002:a05:6638:24c1:b0:375:f3c:6aed with SMTP id y1-20020a05663824c100b003750f3c6aedmr2564188jat.90.1668051579042;
        Wed, 09 Nov 2022 19:39:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668051579; cv=none;
        d=google.com; s=arc-20160816;
        b=nmaJxKZ/V7rWSydgezdvP88SDsB+2VPfQ0pwh8/q+gLduQwewySPmf34Vwxeo5ffhc
         frTnWin0iXDDlRX9QbNYWkRX/TOlF7HEzqGUvcaDQzVhNHGq9sNPomZl+xaRdvRkN3Xz
         A5UKL+7DzQCsStv1SxAgxS5y6q5Qjkso8vx1IhqiEdD6RBQUmKZ1scQc9aK+74Ae+/25
         UQHwAJ0P6nLfXZwgYEVYmTz5Z70JrokY8IRnoNFLWMOOtMWaQWWTiWU1ESNtOZFCtSTQ
         Q5FWjBKUgxmQ7i11Au0eaeTBDr9FZD816AUqKbJaYwMDAcGz3EZPHKnYLw6x0PKLHY7C
         +Cew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=DdZ9Q/uAftDuiTUVziasdFMY6+dnBaMn+k268SdnT24=;
        b=ScB0reUE6v3vldN9sgCTxnBs7GbiL4snLIM4itrQ0e4qMNlj9WYaLBcPXTfZ/6kOGf
         k47T8L0AxzJ2tKFlTeQR+pStuQg1Ze4bBsR2Wjamk25WV0ovSD8ZS0Xcax4cit3zt7cJ
         gYQ5YXWvPxWbuGqm+nyHG1UF5zq2U6C90RU/uX3k3bLYlxkgnU4KQ6JduN71EFX3ELOX
         nNiJy/MuuANxQ3x7c5kqPFcjgXf/6GObBYYfvDmr4YBPznN50sjOJhZZKh+OwcQ1yh7c
         fQ0TqDbToDLkJn0VKCCJSYVPIPHXCulf4NvaYJBMQeCjTggyZZCxMbEnSgf9H0w1vcpS
         AwCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id i1-20020a056e02054100b00300ee6fc286si752799ils.3.2022.11.09.19.39.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Nov 2022 19:39:38 -0800 (PST)
Received-SPF: pass (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.55])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4N76tq5nB3zJnZG;
	Thu, 10 Nov 2022 11:36:03 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemi500016.china.huawei.com
 (7.221.188.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 10 Nov
 2022 11:39:05 +0800
From: "'Zhou Guanghui' via open-iscsi" <open-iscsi@googlegroups.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <michael.christie@oracle.com>,
	<jejb@linux.ibm.com>, <martin.petersen@oracle.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
Subject: [PATCH v2] scsi: iscsi: fix possible memory leak when device_register failed
Date: Thu, 10 Nov 2022 03:37:29 +0000
Message-ID: <20221110033729.1555-1-zhouguanghui1@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemi500016.china.huawei.com (7.221.188.220)
X-CFilter-Loop: Reflected
X-Original-Sender: zhouguanghui1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of zhouguanghui1@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=zhouguanghui1@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Zhou Guanghui <zhouguanghui1@huawei.com>
Reply-To: open-iscsi@googlegroups.com
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

If device_register() returns error, the name allocated by the
dev_set_name() need be freed. As described in the comment of
device_register(), we should use put_device() to give up the
reference in the error path.

Fix this by calling put_device(), the name will be freed in the
kobject_cleanup(), and this patch modified resources will be
released by calling the corresponding callback function in the
device_release().

Signed-off-by: Zhou Guanghui <zhouguanghui1@huawei.com>

---
v1 -> v2:
 add 4 other places that have the same mistake
 suggested in: https://lore.kernel.org/linux-scsi/51f33b2f00334114bbb0663a51354404@huawei.com/T/#t

 drivers/scsi/scsi_transport_iscsi.c | 31 +++++++++++++++--------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3db9684e52..f473c002fa4d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -231,7 +231,7 @@ iscsi_create_endpoint(int dd_size)
 	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
-		goto free_id;
+		goto put_dev;
 
 	err = sysfs_create_group(&ep->dev.kobj, &iscsi_endpoint_group);
 	if (err)
@@ -245,10 +245,12 @@ iscsi_create_endpoint(int dd_size)
 	device_unregister(&ep->dev);
 	return NULL;
 
-free_id:
+put_dev:
 	mutex_lock(&iscsi_ep_idr_mutex);
 	idr_remove(&iscsi_ep_idr, id);
 	mutex_unlock(&iscsi_ep_idr_mutex);
+	put_device(&ep->dev);
+	return NULL;
 free_ep:
 	kfree(ep);
 	return NULL;
@@ -766,7 +768,7 @@ iscsi_create_iface(struct Scsi_Host *shost, struct iscsi_transport *transport,
 
 	err = device_register(&iface->dev);
 	if (err)
-		goto free_iface;
+		goto put_dev;
 
 	err = sysfs_create_group(&iface->dev.kobj, &iscsi_iface_group);
 	if (err)
@@ -780,9 +782,8 @@ iscsi_create_iface(struct Scsi_Host *shost, struct iscsi_transport *transport,
 	device_unregister(&iface->dev);
 	return NULL;
 
-free_iface:
-	put_device(iface->dev.parent);
-	kfree(iface);
+put_dev:
+	put_device(&iface->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_create_iface);
@@ -1251,15 +1252,15 @@ iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 
 	err = device_register(&fnode_sess->dev);
 	if (err)
-		goto free_fnode_sess;
+		goto put_dev;
 
 	if (dd_size)
 		fnode_sess->dd_data = &fnode_sess[1];
 
 	return fnode_sess;
 
-free_fnode_sess:
-	kfree(fnode_sess);
+put_dev:
+	put_device(&fnode_sess->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_create_flashnode_sess);
@@ -1299,15 +1300,15 @@ iscsi_create_flashnode_conn(struct Scsi_Host *shost,
 
 	err = device_register(&fnode_conn->dev);
 	if (err)
-		goto free_fnode_conn;
+		goto put_dev;
 
 	if (dd_size)
 		fnode_conn->dd_data = &fnode_conn[1];
 
 	return fnode_conn;
 
-free_fnode_conn:
-	kfree(fnode_conn);
+put_dev:
+	put_device(&fnode_conn->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_create_flashnode_conn);
@@ -4815,7 +4816,7 @@ iscsi_register_transport(struct iscsi_transport *tt)
 	dev_set_name(&priv->dev, "%s", tt->name);
 	err = device_register(&priv->dev);
 	if (err)
-		goto free_priv;
+		goto put_dev;
 
 	err = sysfs_create_group(&priv->dev.kobj, &iscsi_transport_group);
 	if (err)
@@ -4850,8 +4851,8 @@ iscsi_register_transport(struct iscsi_transport *tt)
 unregister_dev:
 	device_unregister(&priv->dev);
 	return NULL;
-free_priv:
-	kfree(priv);
+put_dev:
+	put_device(&priv->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_register_transport);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221110033729.1555-1-zhouguanghui1%40huawei.com.
