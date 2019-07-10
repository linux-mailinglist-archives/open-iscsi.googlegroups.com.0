Return-Path: <open-iscsi+bncBAABBC6KTDUQKGQE6U7UNYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 782D264BA7
	for <lists+open-iscsi@lfdr.de>; Wed, 10 Jul 2019 19:49:01 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id l5sf1376941oih.3
        for <lists+open-iscsi@lfdr.de>; Wed, 10 Jul 2019 10:49:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562780940; cv=pass;
        d=google.com; s=arc-20160816;
        b=URVdRlC97gCXX1NmtHFIFETtKuqBwM3ZL9wWUZiXLu6Kl8Ypv9XoiPncJxt0fNGAL4
         qDInJ+7sRjevivH4Gn2shsG0YSSomQagTJ1z151sVKzJ53n0emRkUg9ZvZ4PJ7BMlxRx
         hsdObX6P9DGq8lYBmX8bjmHKXrad7coVg4xdsOl+zqnq4pb5zRDSPtkEfD2F+74EVECN
         NLUEYA8vaSR/ngkhksgsuq11quDuQ/pM8hB8E+L8D9YEqghSm+Tmte42s8GQwZgziUJq
         LMAzvrpbEBHm2WcEYswayfAt0dF52fdAubk/PYz6JLeJ0MAqha0asfdnzragz2P0gWTZ
         cVng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=AdQfg7FCt3+/Nu8TBtyOWGK84Hg1EStiku/O1GE9TrM=;
        b=Dfd4+YkyNAvA6mgDO39x4CLynNQQoyocc+ulzQcMLX+FfhG8t3m/hJ4BisS4vnjsUY
         jUNNtsBrYI5Zkj1HIQy2s/0jDUliYO60Z8d52O7VJWa8BInGQoSXdZFW21oBlXxaghih
         vxdG8OPPD4WF3H0hdEiuwS8FPcnMrBQwt/X05JwTrIEIxCyiD/Of5C4ddZ+W/B1uG2y2
         6jl0wTOFQL1mEmR8JI/lt7P9AbCSn6Q0c+CoIDUW/WT281RrM73E+c6UHuhbnJYZYZQn
         NDVIOIWJj3aBpjwrhZyyaVl6aXScEbWjPqIpM0WMT9qg5ja5h2yN9eBWLyiQSFr244QQ
         G/jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as permitted sender) smtp.mailfrom=yang.bin18@zte.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdQfg7FCt3+/Nu8TBtyOWGK84Hg1EStiku/O1GE9TrM=;
        b=ToXlrgVb+HUS6Nn078Cs6ZS6dipCOCkuQzeXayRGY6CKdOTFIFqAOEs2gIWHUgbUib
         A3jN5Z0oocMcSmyZ3UxZqD0i1K1iAQXvbOYE/yG+46sXrSf90kxvl9OeScBDZNGdho0I
         ESqqCCX8Tw7aFRneTP3TpD4g3tKB7XPNxXP0c+JxeGC4zrWwqdlBRItrMWY226vlr+gh
         QeSmB6EBft3HJzRAtlLQdkMLFTUniurnKu52zF3Po6ePeVQwMOxGC9bbSHQLZhew/0T1
         yQ3kty+2tL/aN2NgZvG7lmvXHbSak+Cc0FFSnc/9qptWTuhcrFEkp19l8UDYa+nU2+Tg
         EpLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AdQfg7FCt3+/Nu8TBtyOWGK84Hg1EStiku/O1GE9TrM=;
        b=pDzgNC+SJjXGDA8CmKBrbgfjTyENrIVUD/yLosz58I/sgMNN/0jmNaOWddBd0A8rzg
         zXyBpmZ1Tr/cmtofiKy/G2P8IPcbyXKc+uCEsijPoY4E1/mfekdPGQBAWTDo1BAEcb0T
         gfPZX1JI51/bouAUEdHk/ncpHu+TO8WIIDZvkvrqB+UuqdAuqYoXL7jTj4tXKEz23hCa
         mqudbx32PtyR1ct0AJLiTKWt05eIJEkKRoZ7mZ3KE03uYFCeyD4NAcc4KoDVTPMBX8Gv
         VyhAavf6HDPJob77GRP3pCUFPlsYxeFHrX63b6UTYrkhyg3UD98+RtFFYqmTz5epdG6U
         EA0g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUhKCiZ9HIQZ8pzBPZBZk5vezop7kGq/S2Z7JXqtnZaHD6ShbYO
	zz4YyGurkcsV+ogB8lojG3k=
X-Google-Smtp-Source: APXvYqyrj0KHUEKJvKjQJ/z57TOJycHCKvSUiVLm31wtc2l2Pz1oqfmV9WVKVV1FbOHcJzrm5Lb7qg==
X-Received: by 2002:a9d:812:: with SMTP id 18mr26010820oty.180.1562780939913;
        Wed, 10 Jul 2019 10:48:59 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:c78e:: with SMTP id x136ls458831oif.5.gmail; Wed, 10 Jul
 2019 10:48:59 -0700 (PDT)
X-Received: by 2002:aca:e106:: with SMTP id y6mr4055078oig.77.1562780939692;
        Wed, 10 Jul 2019 10:48:59 -0700 (PDT)
Received: by 2002:aca:edd2:0:0:0:0:0 with SMTP id l201msoih;
        Wed, 10 Jul 2019 00:33:48 -0700 (PDT)
X-Received: by 2002:a17:90a:26e4:: with SMTP id m91mr5228562pje.93.1562744028168;
        Wed, 10 Jul 2019 00:33:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562744028; cv=none;
        d=google.com; s=arc-20160816;
        b=WPFdeXvQKrGobKYni8FaCRXx4/Lhueji/mvnvDAh6UOTULgdWKdWBFRg4YVoreG6gy
         1OHYtGfs9vN16+IZ4iT1vDCTLsyVzHEgwVJPqtl8x3bfrXypDoE/MyFA2tUgMg99MqmP
         Lsu2Un13ohWHiGNm+zPuaqr8RuqwskFWhqeThlwgvsS79WheaTjZj+AgVDLEtvhr5JlA
         0Ecqs6/bbCtSRh4c2tgW6F7aPZhdRDndVQDKgdeMlrNCcO9QMOzahaXzfafrde0chHau
         rGeL/q8aAFxbQ2clUGjFLOp3QsHJqh/4B3DGHK1cp8CSLx5zPLyFV97l01E4Wh5tvRmr
         6yFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=szufwnlf+uDBbFhg/Z9vUNzzyu+n2WE4EH+cV8xCTds=;
        b=CxrfEkjjYSKrq1DIw25YwUkYeA1YknLL7YLtSDnyYrTUhLxwQcls0fNA3umN/d7il4
         Fqo2d1w5p1aGRosO6/YH75e8BrgBMeetIfxOagqDKJBnF8i23SklXm3yWVTr8AJ0JqK9
         wpWgAoaXvZAD0En+QmlNNAnOPMAW2g/cc0gKAJd2oEz4CnzCaS0TYKCBugLp34XEoPKO
         WhG64FedYCsUjSe5fiaHuCjmr8PUDxMO0u6jIOzsLkrHi828hcrom6RbFsuwgUDooo4+
         gcYw7zYOIedhOnVA6762Dwuz4x9BhUtR7gveiZcpnbXVO1/VLNDXtQ8SyyVZMqvsBrn2
         X2bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as permitted sender) smtp.mailfrom=yang.bin18@zte.com.cn
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn. [63.217.80.70])
        by gmr-mx.google.com with ESMTPS id z9si244642pjp.0.2019.07.10.00.33.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jul 2019 00:33:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as permitted sender) client-ip=63.217.80.70;
Received: from mxct.zte.com.cn (unknown [192.168.164.217])
	by Forcepoint Email with ESMTPS id AD8EB6F86D720E0D5201
	for <open-iscsi@googlegroups.com>; Wed, 10 Jul 2019 15:33:46 +0800 (CST)
Received: from mse-fl2.zte.com.cn (unknown [10.30.14.239])
	by Forcepoint Email with ESMTPS id 9744B65CB9B0520C0A0A;
	Wed, 10 Jul 2019 15:33:46 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
	by mse-fl2.zte.com.cn with ESMTP id x6A7Vu2q076458;
	Wed, 10 Jul 2019 15:31:56 +0800 (GMT-8)
	(envelope-from yang.bin18@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
          by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
          with ESMTP id 2019071015321609-2237267 ;
          Wed, 10 Jul 2019 15:32:16 +0800
From: Yang Bin <yang.bin18@zte.com.cn>
To: lduncan@suse.com
Cc: cleech@redhat.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, xue.zhihong@zte.com.cn,
        wang.yi59@zte.com.cn, wang.liang82@zte.com.cn,
        " Yang Bin "<yang.bin18@zte.com.cn>
Subject: [PATCH] Check sk before sendpage
Date: Wed, 10 Jul 2019 15:30:09 +0800
Message-Id: <1562743809-31133-1-git-send-email-yang.bin18@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release 8.5.3FP6|November
 21, 2013) at 2019-07-10 15:32:16,
	Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-07-10 15:31:59,
	Serialize complete at 2019-07-10 15:31:59
X-MAIL: mse-fl2.zte.com.cn x6A7Vu2q076458
X-Original-Sender: yang.bin18@zte.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as
 permitted sender) smtp.mailfrom=yang.bin18@zte.com.cn
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

From: " Yang Bin "<yang.bin18@zte.com.cn>

Before xmit,iscsi may disconnect just now.
So must check connection sock NULL or not,or kernel will crash for
accessing NULL pointer.

Signed-off-by: Yang Bin <yang.bin18@zte.com.cn>
---
 drivers/scsi/iscsi_tcp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 7bedbe8..a59c49f 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -264,6 +264,9 @@ static int iscsi_sw_tcp_xmit_segment(struct iscsi_tcp_conn *tcp_conn,
 	unsigned int copied = 0;
 	int r = 0;
 
+	if (!sk)
+		return -ENOTCONN;
+
 	while (!iscsi_tcp_segment_done(tcp_conn, segment, 0, r)) {
 		struct scatterlist *sg;
 		unsigned int offset, copy;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1562743809-31133-1-git-send-email-yang.bin18%40zte.com.cn.
For more options, visit https://groups.google.com/d/optout.
