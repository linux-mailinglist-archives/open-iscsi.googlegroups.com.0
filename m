Return-Path: <open-iscsi+bncBDJOTXWY2MCBBE567KNQMGQEAKG2TVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x1139.google.com (mail-yw1-x1139.google.com [IPv6:2607:f8b0:4864:20::1139])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ECB636D18
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:30:45 +0100 (CET)
Received: by mail-yw1-x1139.google.com with SMTP id 00721157ae682-393c38f7bcfsf156751267b3.5
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242644; cv=pass;
        d=google.com; s=arc-20160816;
        b=r9X/7Fp9eb8FeM9UnswESMG+j1d1hkUtJj7G18Js7mkmfJMfkq+z8/zGs0ff9VlWUm
         Pon98MOucR5CPNhriF7VZlk6l+Y7CwCcnz/dQPH2IzFdyWWPNK2PCD65dDmxkkyvXn1b
         eFNTdJ8ulozuXT1jVKkmTRBWmEd6TsxPqyON1X6w48Q1wuAYUNS97ty05coM7rxnuv42
         sB42z/X+ZirHrliQ7cnJsxXKPIhTXcfCb/JfwETcAHiggIVAk662t7yHNL4Cw92AL9lY
         sHfWsoD68YLFlP6warsPOCGd01lRqwCHRL4+7ZtN8/AZfQzz8zMrbr9VdX+GKg3YsGGq
         EN1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=j0s32VjLrDvqtKdGFEEFTHWnvtNOSfugAcpFEXi2j2c=;
        b=HzmCw+um7wdaErpVLVZicxY6pxe2XnIilcZIxDIu4rgudZuK/LatxIXcTEnJQ0Px8M
         MSBK2bnZljHT6ceqVcUAUqCfYn2sJxynqVICbR/tqSN0he0b0uvugBM1/jzCPWprhrPo
         IgTbEYWcXddjs32n3myhZyI9aGUtYrhNQS3ytXvH2SiV5Xwn4xEqLLqS1jNrHzLVXsXs
         SWzeEOk6qQ5IMDcXL5GhI8UjoH5mQYsI47hiKkFMdf8KELYeQhPWc4pSCoX2rnnd6uRx
         XJRh9lkeNDPeChs6Tr2Jxhk9/lK4UpSPM9fjDYdRyJBuCOR4XypWE2+sxkVN/sxb9+og
         5d6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=h1miTZlZ;
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j0s32VjLrDvqtKdGFEEFTHWnvtNOSfugAcpFEXi2j2c=;
        b=i8eFOAewIyasUaEuJvLC1UT2DqO/XMUxErqENcTt2G6YGYQIXDJKBLDjYYCnCIfgEY
         qrxUGFoqIg0oTSyjRS9U5FHRGNYKvdM7gzZOUNvIH+hhrYLGfb/pW5XIoCLjpWjZ7IHC
         5Fd6PxCuThZDZ5YCxJ7wGRuGHp1JrrMzQFg2Gswjxc8QskEWqcGil5wA10v3jNEy2g8v
         sZ6wWMb1x2TJ4Rt+R5yOrCjmoeJ5Hi2ywXonR9jCaQfwITpWU4zrRrAoeG8++nRg0AM+
         1aIr3TFh1fUoekOx2xPdTjaEdzZxOdyyBHZA9aFtAWGhR+ROjoe2L6vcCRsEM8LQ9gcG
         Em8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j0s32VjLrDvqtKdGFEEFTHWnvtNOSfugAcpFEXi2j2c=;
        b=W73KFNrs+noN+jMTKM+F92HpvKXJHF84lOadxpxCT/lqKjd58IBBMfa7Frl8qzQgbo
         /nSQx9QQU6qPKSmRLXZEhTz9KNZqUtodX5avqA4IXZgOMkfzO0O68jvihkwHPqNPSQHp
         KANqZzUQBz7F4VPrc1ng/m3wAImFInpuFR1NCCWr2TZ6rSMJcuEYcFCx069ucdql4Y9/
         cSdyKe+RSlv/+Wx8PJeV8PyuwBQToYMI6vgU+W0pXT0CBHyWJUXErkF3z/53HsKVCmf1
         RoJKNuoBPLF4LWM1BBY+AifOmKlp5KWL6jV3gMwpixLW1n1cS01JlYhxsh87gsmIBvSn
         y8AQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnIij8LFE2VOTxhm+olzKi2SbXHVWMsuY9i+DeGVSevTsVO0NoV
	SsKjQMZuBHaVxe8HW68PK5U=
X-Google-Smtp-Source: AA0mqf51KtxkPiVAXYvCMcktA8Og0ZsR9UtS4I5C6cA7eW9Owr2mStbL2AGhnuBccqm0J3IQ45zVGQ==
X-Received: by 2002:a0d:df8b:0:b0:39b:b038:1edd with SMTP id i133-20020a0ddf8b000000b0039bb0381eddmr10529612ywe.311.1669242644651;
        Wed, 23 Nov 2022 14:30:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0d:dfcb:0:b0:378:ccd2:ed5b with SMTP id i194-20020a0ddfcb000000b00378ccd2ed5bls42733ywe.8.-pod-prod-gmail;
 Wed, 23 Nov 2022 14:30:43 -0800 (PST)
X-Received: by 2002:a0d:ed01:0:b0:377:6b75:bcb0 with SMTP id w1-20020a0ded01000000b003776b75bcb0mr12102328ywe.407.1669242643011;
        Wed, 23 Nov 2022 14:30:43 -0800 (PST)
Received: by 2002:a81:4b43:0:b0:36a:efd4:b0e6 with SMTP id 00721157ae682-3944380e2a3ms7b3;
        Mon, 21 Nov 2022 05:35:45 -0800 (PST)
X-Received: by 2002:a0d:ef05:0:b0:361:1939:e38a with SMTP id y5-20020a0def05000000b003611939e38amr17188459ywe.400.1669037744668;
        Mon, 21 Nov 2022 05:35:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669037744; cv=none;
        d=google.com; s=arc-20160816;
        b=eKv2SpvOP38hCD2ChEOsXW3eYQnQz/+4pjuSwgEhyDJMVgoc9KMKIiT3VYapP/4Ox5
         4/RlxNfAKLKyitc/MUicTB9JKE1Qzj+RqLRxrF71cZvVvSQUom1MRtxYByDE54aXxnxi
         gYfbvgq+L+cKC+MKsuDNeIAWdiGJYb2dsECV8ABXToNIRZv4i5/ruA4w35cyM8WN9Yzl
         IDmuJLtnFk0S/mbV+8Ca9R2HSqikltQ0iduirFDgXDC8v38Ip6s47pXJUlM9EQPFkXw5
         TZ1/rTaRIE4QnZ7xsV0VyOi5VddW4E1HP+vWxzYW6bvW43ttdzlQ9aQqgcVIxZ8Pz2MO
         JRHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0PNVVbxIqYIMNHfObHOmGwpKRDt3WRR+KlB649CkZdU=;
        b=DY4Q85CaH0sQaWKXhCyiRPTPptyZN2HqYtSH27vwyZIy6XzKxy37FOUuXmLCzxzEpQ
         8Kab5ozK9LJK6tFOjn0R5TVlOl20D0FKLxEye1Z846JZXlAqPcuOQ2HGweeu4XlSofjK
         qCvPvpySLnoKrZXcTO3kryBqwxZr/WsktlpnUom+BbhrAXbIi2auwMv0N4ze+81vxPNw
         p9IDhLDkpuDUKUi/KywT551M/qb2hhCKfqOeUmtkG5T76ggAhOYTpS7Mhowy8gqcZzw0
         RyMWst84r/YxcEoDtlSerWgSC3uvnzOcFFkm+J8ACDCCV5LTMJIT7YqtRaeHGu/wiIvK
         CHHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=h1miTZlZ;
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id p128-20020a25d886000000b006d3034c7baesi584079ybg.3.2022.11.21.05.35.44
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 05:35:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bcodding@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-rlO582ulOneUVS_CgfihtA-1; Mon, 21 Nov 2022 08:35:38 -0500
X-MC-Unique: rlO582ulOneUVS_CgfihtA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B278185A79C;
	Mon, 21 Nov 2022 13:35:36 +0000 (UTC)
Received: from bcodding.csb (unknown [10.22.50.7])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 791E2492CA2;
	Mon, 21 Nov 2022 13:35:35 +0000 (UTC)
Received: by bcodding.csb (Postfix, from userid 24008)
	id 19AFF10C30E3; Mon, 21 Nov 2022 08:35:35 -0500 (EST)
From: Benjamin Coddington <bcodding@redhat.com>
To: netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	=?UTF-8?q?Christoph=20B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
	Jens Axboe <axboe@kernel.dk>,
	Josef Bacik <josef@toxicpanda.com>,
	Keith Busch <kbusch@kernel.org>,
	Christoph Hellwig <hch@lst.de>,
	Sagi Grimberg <sagi@grimberg.me>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Howells <dhowells@redhat.com>,
	Marc Dionne <marc.dionne@auristor.com>,
	Steve French <sfrench@samba.org>,
	Christine Caulfield <ccaulfie@redhat.com>,
	David Teigland <teigland@redhat.com>,
	Mark Fasheh <mark@fasheh.com>,
	Joel Becker <jlbec@evilplan.org>,
	Joseph Qi <joseph.qi@linux.alibaba.com>,
	Eric Van Hensbergen <ericvh@gmail.com>,
	Latchesar Ionkov <lucho@ionkov.net>,
	Dominique Martinet <asmadeus@codewreck.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Ilya Dryomov <idryomov@gmail.com>,
	Xiubo Li <xiubli@redhat.com>,
	Trond Myklebust <trond.myklebust@hammerspace.com>,
	Anna Schumaker <anna@kernel.org>,
	Chuck Lever <chuck.lever@oracle.com>,
	Jeff Layton <jlayton@kernel.org>,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	nbd@other.debian.org,
	linux-nvme@lists.infradead.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-afs@lists.infradead.org,
	linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org,
	cluster-devel@redhat.com,
	ocfs2-devel@oss.oracle.com,
	v9fs-developer@lists.sourceforge.net,
	ceph-devel@vger.kernel.org,
	linux-nfs@vger.kernel.org
Subject: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Date: Mon, 21 Nov 2022 08:35:18 -0500
Message-Id: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
In-Reply-To: <cover.1669036433.git.bcodding@redhat.com>
References: <cover.1669036433.git.bcodding@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Original-Sender: bcodding@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=h1miTZlZ;
       spf=pass (google.com: domain of bcodding@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
GFP_NOIO flag on sk_allocation which the networking system uses to decide
when it is safe to use current->task_frag.  The results of this are
unexpected corruption in task_frag when SUNRPC is involved in memory
reclaim.

The corruption can be seen in crashes, but the root cause is often
difficult to ascertain as a crashing machine's stack trace will have no
evidence of being near NFS or SUNRPC code.  I believe this problem to
be much more pervasive than reports to the community may indicate.

Fix this by having kernel users of sockets that may corrupt task_frag due
to reclaim set sk_use_task_frag =3D false.  Preemptively correcting this
situation for users that still set sk_allocation allows them to convert to
memalloc_nofs_save/restore without the same unexpected corruptions that are
sure to follow, unlikely to show up in testing, and difficult to bisect.

CC: Philipp Reisner <philipp.reisner@linbit.com>
CC: Lars Ellenberg <lars.ellenberg@linbit.com>
CC: "Christoph B=C3=B6hmwalder" <christoph.boehmwalder@linbit.com>
CC: Jens Axboe <axboe@kernel.dk>
CC: Josef Bacik <josef@toxicpanda.com>
CC: Keith Busch <kbusch@kernel.org>
CC: Christoph Hellwig <hch@lst.de>
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Lee Duncan <lduncan@suse.com>
CC: Chris Leech <cleech@redhat.com>
CC: Mike Christie <michael.christie@oracle.com>
CC: "James E.J. Bottomley" <jejb@linux.ibm.com>
CC: "Martin K. Petersen" <martin.petersen@oracle.com>
CC: Valentina Manea <valentina.manea.m@gmail.com>
CC: Shuah Khan <shuah@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: David Howells <dhowells@redhat.com>
CC: Marc Dionne <marc.dionne@auristor.com>
CC: Steve French <sfrench@samba.org>
CC: Christine Caulfield <ccaulfie@redhat.com>
CC: David Teigland <teigland@redhat.com>
CC: Mark Fasheh <mark@fasheh.com>
CC: Joel Becker <jlbec@evilplan.org>
CC: Joseph Qi <joseph.qi@linux.alibaba.com>
CC: Eric Van Hensbergen <ericvh@gmail.com>
CC: Latchesar Ionkov <lucho@ionkov.net>
CC: Dominique Martinet <asmadeus@codewreck.org>
CC: "David S. Miller" <davem@davemloft.net>
CC: Eric Dumazet <edumazet@google.com>
CC: Jakub Kicinski <kuba@kernel.org>
CC: Paolo Abeni <pabeni@redhat.com>
CC: Ilya Dryomov <idryomov@gmail.com>
CC: Xiubo Li <xiubli@redhat.com>
CC: Chuck Lever <chuck.lever@oracle.com>
CC: Jeff Layton <jlayton@kernel.org>
CC: Trond Myklebust <trond.myklebust@hammerspace.com>
CC: Anna Schumaker <anna@kernel.org>
CC: drbd-dev@lists.linbit.com
CC: linux-block@vger.kernel.org
CC: linux-kernel@vger.kernel.org
CC: nbd@other.debian.org
CC: linux-nvme@lists.infradead.org
CC: open-iscsi@googlegroups.com
CC: linux-scsi@vger.kernel.org
CC: linux-usb@vger.kernel.org
CC: linux-afs@lists.infradead.org
CC: linux-cifs@vger.kernel.org
CC: samba-technical@lists.samba.org
CC: cluster-devel@redhat.com
CC: ocfs2-devel@oss.oracle.com
CC: v9fs-developer@lists.sourceforge.net
CC: netdev@vger.kernel.org
CC: ceph-devel@vger.kernel.org
CC: linux-nfs@vger.kernel.org

Suggested-by: Guillaume Nault <gnault@redhat.com>
Signed-off-by: Benjamin Coddington <bcodding@redhat.com>
---
 drivers/block/drbd/drbd_receiver.c | 3 +++
 drivers/block/nbd.c                | 1 +
 drivers/nvme/host/tcp.c            | 1 +
 drivers/scsi/iscsi_tcp.c           | 1 +
 drivers/usb/usbip/usbip_common.c   | 1 +
 fs/afs/rxrpc.c                     | 1 +
 fs/cifs/connect.c                  | 1 +
 fs/dlm/lowcomms.c                  | 2 ++
 fs/ocfs2/cluster/tcp.c             | 1 +
 net/9p/trans_fd.c                  | 1 +
 net/ceph/messenger.c               | 1 +
 net/sunrpc/xprtsock.c              | 3 +++
 12 files changed, 17 insertions(+)

diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_r=
eceiver.c
index af4c7d65490b..09ad8d82c200 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -1030,6 +1030,9 @@ static int conn_connect(struct drbd_connection *conne=
ction)
 	sock.socket->sk->sk_allocation =3D GFP_NOIO;
 	msock.socket->sk->sk_allocation =3D GFP_NOIO;
=20
+	sock.socket->sk->sk_use_task_frag =3D false;
+	msock.socket->sk->sk_use_task_frag =3D false;
+
 	sock.socket->sk->sk_priority =3D TC_PRIO_INTERACTIVE_BULK;
 	msock.socket->sk->sk_priority =3D TC_PRIO_INTERACTIVE;
=20
diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
index 2a709daefbc4..815ee631ed30 100644
--- a/drivers/block/nbd.c
+++ b/drivers/block/nbd.c
@@ -514,6 +514,7 @@ static int sock_xmit(struct nbd_device *nbd, int index,=
 int send,
 	noreclaim_flag =3D memalloc_noreclaim_save();
 	do {
 		sock->sk->sk_allocation =3D GFP_NOIO | __GFP_MEMALLOC;
+		sock->sk->sk_use_task_frag =3D false;
 		msg.msg_name =3D NULL;
 		msg.msg_namelen =3D 0;
 		msg.msg_control =3D NULL;
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index d5871fd6f769..e01d78858cb4 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1531,6 +1531,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nct=
rl,
 	queue->sock->sk->sk_rcvtimeo =3D 10 * HZ;
=20
 	queue->sock->sk->sk_allocation =3D GFP_ATOMIC;
+	queue->sock->sk->sk_use_task_frag =3D false;
 	nvme_tcp_set_queue_io_cpu(queue);
 	queue->request =3D NULL;
 	queue->data_remaining =3D 0;
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 29b1bd755afe..733e540d0abf 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -733,6 +733,7 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_se=
ssion,
 	sk->sk_reuse =3D SK_CAN_REUSE;
 	sk->sk_sndtimeo =3D 15 * HZ; /* FIXME: make it configurable */
 	sk->sk_allocation =3D GFP_ATOMIC;
+	sk->sk_use_task_frag =3D false;
 	sk_set_memalloc(sk);
 	sock_no_linger(sk);
=20
diff --git a/drivers/usb/usbip/usbip_common.c b/drivers/usb/usbip/usbip_com=
mon.c
index 2ab99244bc31..76bfc6e43881 100644
--- a/drivers/usb/usbip/usbip_common.c
+++ b/drivers/usb/usbip/usbip_common.c
@@ -315,6 +315,7 @@ int usbip_recv(struct socket *sock, void *buf, int size=
)
=20
 	do {
 		sock->sk->sk_allocation =3D GFP_NOIO;
+		sock->sk->sk_use_task_frag =3D false;
=20
 		result =3D sock_recvmsg(sock, &msg, MSG_WAITALL);
 		if (result <=3D 0)
diff --git a/fs/afs/rxrpc.c b/fs/afs/rxrpc.c
index eccc3cd0cb70..ac75ad18db83 100644
--- a/fs/afs/rxrpc.c
+++ b/fs/afs/rxrpc.c
@@ -46,6 +46,7 @@ int afs_open_socket(struct afs_net *net)
 		goto error_1;
=20
 	socket->sk->sk_allocation =3D GFP_NOFS;
+	socket->sk->sk_use_task_frag =3D false;
=20
 	/* bind the callback manager's address to make this a server socket */
 	memset(&srx, 0, sizeof(srx));
diff --git a/fs/cifs/connect.c b/fs/cifs/connect.c
index 7ae6f2c08153..c2b0d6f59f79 100644
--- a/fs/cifs/connect.c
+++ b/fs/cifs/connect.c
@@ -2935,6 +2935,7 @@ generic_ip_connect(struct TCP_Server_Info *server)
 		cifs_dbg(FYI, "Socket created\n");
 		server->ssocket =3D socket;
 		socket->sk->sk_allocation =3D GFP_NOFS;
+		socket->sk->sk_use_task_frag =3D false;
 		if (sfamily =3D=3D AF_INET6)
 			cifs_reclassify_socket6(socket);
 		else
diff --git a/fs/dlm/lowcomms.c b/fs/dlm/lowcomms.c
index a4e84e8d94c8..4cf29ac3c428 100644
--- a/fs/dlm/lowcomms.c
+++ b/fs/dlm/lowcomms.c
@@ -699,6 +699,7 @@ static void add_listen_sock(struct socket *sock, struct=
 listen_connection *con)
=20
 	sk->sk_user_data =3D con;
 	sk->sk_allocation =3D GFP_NOFS;
+	sk->sk_use_task_frag =3D false;
 	/* Install a data_ready callback */
 	sk->sk_data_ready =3D lowcomms_listen_data_ready;
 	release_sock(sk);
@@ -718,6 +719,7 @@ static void add_sock(struct socket *sock, struct connec=
tion *con)
 	sk->sk_write_space =3D lowcomms_write_space;
 	sk->sk_state_change =3D lowcomms_state_change;
 	sk->sk_allocation =3D GFP_NOFS;
+	sk->sk_use_task_frag =3D false;
 	sk->sk_error_report =3D lowcomms_error_report;
 	release_sock(sk);
 }
diff --git a/fs/ocfs2/cluster/tcp.c b/fs/ocfs2/cluster/tcp.c
index f660c0dbdb63..3eaafa5e5ec4 100644
--- a/fs/ocfs2/cluster/tcp.c
+++ b/fs/ocfs2/cluster/tcp.c
@@ -1604,6 +1604,7 @@ static void o2net_start_connect(struct work_struct *w=
ork)
 	sc->sc_sock =3D sock; /* freed by sc_kref_release */
=20
 	sock->sk->sk_allocation =3D GFP_ATOMIC;
+	sock->sk->sk_use_task_frag =3D false;
=20
 	myaddr.sin_family =3D AF_INET;
 	myaddr.sin_addr.s_addr =3D mynode->nd_ipv4_address;
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44be..96f803499323 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -851,6 +851,7 @@ static int p9_socket_open(struct p9_client *client, str=
uct socket *csocket)
 		return -ENOMEM;
=20
 	csocket->sk->sk_allocation =3D GFP_NOIO;
+	csocket->sk->sk_use_task_frag =3D false;
 	file =3D sock_alloc_file(csocket, 0, NULL);
 	if (IS_ERR(file)) {
 		pr_err("%s (%d): failed to map fd\n",
diff --git a/net/ceph/messenger.c b/net/ceph/messenger.c
index d3bb656308b4..cad8e0ca8432 100644
--- a/net/ceph/messenger.c
+++ b/net/ceph/messenger.c
@@ -446,6 +446,7 @@ int ceph_tcp_connect(struct ceph_connection *con)
 	if (ret)
 		return ret;
 	sock->sk->sk_allocation =3D GFP_NOFS;
+	sock->sk->sk_use_task_frag =3D false;
=20
 #ifdef CONFIG_LOCKDEP
 	lockdep_set_class(&sock->sk->sk_lock, &socket_class);
diff --git a/net/sunrpc/xprtsock.c b/net/sunrpc/xprtsock.c
index e976007f4fd0..d3170b753dfc 100644
--- a/net/sunrpc/xprtsock.c
+++ b/net/sunrpc/xprtsock.c
@@ -1882,6 +1882,7 @@ static int xs_local_finish_connecting(struct rpc_xprt=
 *xprt,
 		sk->sk_write_space =3D xs_udp_write_space;
 		sk->sk_state_change =3D xs_local_state_change;
 		sk->sk_error_report =3D xs_error_report;
+		sk->sk_use_task_frag =3D false;
=20
 		xprt_clear_connected(xprt);
=20
@@ -2083,6 +2084,7 @@ static void xs_udp_finish_connecting(struct rpc_xprt =
*xprt, struct socket *sock)
 		sk->sk_user_data =3D xprt;
 		sk->sk_data_ready =3D xs_data_ready;
 		sk->sk_write_space =3D xs_udp_write_space;
+		sk->sk_use_task_frag =3D false;
=20
 		xprt_set_connected(xprt);
=20
@@ -2250,6 +2252,7 @@ static int xs_tcp_finish_connecting(struct rpc_xprt *=
xprt, struct socket *sock)
 		sk->sk_state_change =3D xs_tcp_state_change;
 		sk->sk_write_space =3D xs_tcp_write_space;
 		sk->sk_error_report =3D xs_error_report;
+		sk->sk_use_task_frag =3D false;
=20
 		/* socket options */
 		sock_reset_flag(sk, SOCK_LINGER);
--=20
2.31.1

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding=
%40redhat.com.
