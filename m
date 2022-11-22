Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBS5M6GNQMGQE5EFT6JQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F84633494
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 05:55:42 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id v18-20020a1f2f12000000b003b6a70630besf4786646vkv.12
        for <lists+open-iscsi@lfdr.de>; Mon, 21 Nov 2022 20:55:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669092941; cv=pass;
        d=google.com; s=arc-20160816;
        b=wIIu6G2voPaCLFx0wyqgjofFFxKWyKlG98lT33IaH0sIOr3x3DYQC6O3CfIY+OdlK+
         URzVe3snMPKgOIfucb+mQozyH4GmKiHCpJzoe0/dmHXbToFtEmPEXkB4TDhVn4ET4ZP6
         6FpNCWiJCfcMXnoYmsJZj1QocQtFgjoh7PkdEkI14mrRJ0/qfmt4UKPYfJNFrZAEw8VU
         R0Bjb7LUrvHDEPYlI4DS3LSlRo9Nv9WhP3fey74fUxpFU+os5yLUF5Diy+CaGZs8AAz4
         evNBisO8CY+GtW/agOLGB2byAgT7mVxZAxW6BagU/f+H+2DcgYdblPQUOwP5sNgw63sq
         +69w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=fN84O/ehspsaZK74MkxVnTu6xLfb9RHa/5d+nkeYJRw=;
        b=dWPrNnAPTC4VJjTnz0QE0pEL15Wr2DsvdAuiCxVp0FuJTLmMFYAkE8W7CPB1c8qbVT
         O//6rNYhWgsg3s1HqepQ1cVuMW/i+8cYvO5ivA5JKoiDCeHROTt9URWPNqXvFR25RUcO
         Io0Ig0KMCZNZSjv/Pr+HVonVUitJo0TJeQpoOOvxOU6PnKrcgmLJSAF1xXsqnzRgYnKa
         JQvTr7QJYrDbTqvRe53/sYOWN5SQ/eea/J1VzOabdVgSGohoC3iuk4rxfqTHHLVIS4hZ
         OfZa+FGunqz+kqbToP1FprWWbmY+zva7mxkR7AsLrreiqD/2ggOOO8Hu1f/m1bcOMbbk
         EPOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fN84O/ehspsaZK74MkxVnTu6xLfb9RHa/5d+nkeYJRw=;
        b=TG60ihm7f9/WN8XL16hiIkLK1lcjq+j9aSA9jLy8zvQuvj+jO44zwEcAgjYVKmxfuP
         336BjxccOMHpEAXOR70S/DqCknPuGThHPPj3QHl5d+NDZaqJWCvhfA6hwSBap04ffPR8
         7SedvpgMgjtF+U0WE1GES3EdnhvZIxQuFd0WHpG87DEEbsilaHKCi7mC07gQ6P0rFbM7
         7FxxIXa1AqvtjHWdBHSbn0DJWvR8D6nzHO65QNDGm2d6MhhdVKql2uQS01w+KJ4UV8v9
         jbG3AsLPhAuT675Lg7+jAPnhomzjv3k9UsvS13xdQdgke03ri1XdFowQTfVvnKEGwxPj
         eAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fN84O/ehspsaZK74MkxVnTu6xLfb9RHa/5d+nkeYJRw=;
        b=XDdJ+6eCwYO11EL6sbNG6FMkgvoEVKHrhr27Iw+FKrdZaP10fmESJWh1gjtoItVJJo
         y3I+6WXFkfIZkQT0qhu6F7fOuYEuVYtcrATcrPkIyncasgKqTdPXFHJAwh3TftNaDLUW
         N/kWpk4xPJkhyee0Fhyjr0TshUaRGTdks6ExuDdwirz4tUK5ZCUJlkrP39EClti3cVnv
         we/Uc0tFRPscYravXTcrJc0d1DCexgYzOnDAiZVbLDZN/x3PxJri3ppF2s4jG20xvmN3
         RGg6vTexIoOKt6RDiEIJtRRduXCbrJX0/s61mw+T7NcYLzQiYALqg6g9h1RD1FpxDTL6
         wt5g==
X-Gm-Message-State: ANoB5pm5Lp+vpH13NhhhzJDLnbISPRPhQ43mxDsDDJdTMRZgk/sLmC+k
	RchmPLoGsfruroKSpHaIqRg=
X-Google-Smtp-Source: AA0mqf5+MrhrfFmYnmTjInxmZZ7MoD3dBOTCp69tgt2MfUBYr6XTe+iwzc6v7/uch8vUJgSCRPmf1w==
X-Received: by 2002:a1f:5086:0:b0:3b7:5ff7:cfb8 with SMTP id e128-20020a1f5086000000b003b75ff7cfb8mr2442494vkb.11.1669092941381;
        Mon, 21 Nov 2022 20:55:41 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:c40d:0:b0:3af:c73:b1b2 with SMTP id c13-20020a67c40d000000b003af0c73b1b2ls2880833vsk.5.-pod-prod-gmail;
 Mon, 21 Nov 2022 20:55:39 -0800 (PST)
X-Received: by 2002:a67:f510:0:b0:3aa:7f29:7a1b with SMTP id u16-20020a67f510000000b003aa7f297a1bmr2614901vsn.33.1669092939250;
        Mon, 21 Nov 2022 20:55:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669092939; cv=none;
        d=google.com; s=arc-20160816;
        b=OB3YPCuAU2axDQ8eT6R6y5Ts6YhDC8bJbV/iwZuHcCwL6UAvRqHkNFOoPJY/OKP4gx
         q3GYrDsAYmQXB7jhgT6E25mvmz3pRt4+Q956CHvsDwtGAjB1XL0G8+c3Mkm+iDf6NdPs
         dYTebGF53wkUVkttnXddP7rMqqD/5o6h1a46HEdMPEs3S66mraXgMlMxVdrmAkyU+yqH
         CK4PCNCq2tXtMby9VYm3XWnN/24+YEqfdE2VBOmc2A/esWciZe7E5kGgwGxrbdllu0sJ
         rNXCowB+M5BH7kNFqg+Wik5SPlJvXXpGa/fPJvJOC3tZRJuGBePXAQSA4IKkuZHMXcaX
         FP0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=TMjyj29NwjCv8aU+GqfsSValahXnto3d4pkE5xa6QMc=;
        b=VFN/WS3YE767LHjmfdHNDlZcx9A9TOsPvP4t6ZJLgO19TlYkHd5MGnFLIPfBwFp7X5
         SJUc+VxpOigTlJ6aH1DkDElIEYe9mVhIiUu9Fsf6pwN+qGOIEN0jcakG5yaCluUXbPaF
         q8IfYg+LH+VY/dBDCbk0eToH5sr6ow7p+XSL1zCodxKYbVByLv3/qlttBq93Lz0uSVZq
         caG4qzezA+RteatOxIqiT3AH43qRRHMpBv0iVGvN6JeSW7PmS5rvNW6fk9Sm0W7Zz6SY
         j1rW0u4LA/HYxM+QHN7foubHlFvhVim+zSIgPfENvSnchmPd2lNFjXOqTMWzMqtTfIT6
         e7tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id az3-20020a056130038300b00414ee53149csi1880236uab.1.2022.11.21.20.55.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Nov 2022 20:55:39 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NGX3y0LWmzRpQd;
	Tue, 22 Nov 2022 12:54:38 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 12:55:06 +0800
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 12:55:05 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH] scsi:iscsi: rename iscsi_set_param to iscsi_if_set_param
Date: Tue, 22 Nov 2022 18:11:05 +0000
Message-ID: <20221122181105.4123935-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
Reply-To: open-iscsi@googlegroups.com
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

There are two iscsi_set_param() functions individually defined
in libiscsi.c and scsi_transport_iscsi.c which is confused.

So rename the one in scsi_transport_iscsi.c to iscsi_if_set_param().

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3db9684e52..c3fe5ecfee59 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2988,7 +2988,7 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
 }
 
 static int
-iscsi_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
+iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
 {
 	char *data = (char*)ev + sizeof(*ev);
 	struct iscsi_cls_conn *conn;
@@ -3941,7 +3941,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 			err = -EINVAL;
 		break;
 	case ISCSI_UEVENT_SET_PARAM:
-		err = iscsi_set_param(transport, ev);
+		err = iscsi_if_set_param(transport, ev);
 		break;
 	case ISCSI_UEVENT_CREATE_CONN:
 	case ISCSI_UEVENT_DESTROY_CONN:
-- 
2.35.3

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221122181105.4123935-1-haowenchao%40huawei.com.
