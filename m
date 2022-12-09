Return-Path: <open-iscsi+bncBD2Y5LOX3EDRBZXD46OAMGQEFYFJNEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 129ED64CD69
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 16:55:21 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id ca5-20020a056830610500b0066ea21701cesf1884410otb.7
        for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 07:55:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671033319; cv=pass;
        d=google.com; s=arc-20160816;
        b=A6FmhpCwNlExsdAVIrJ12Hc5dCPTn/dZaoyx+SsbjODCNGuEr03uUmDACrOnisFpmn
         guxn6N6U1sy9o9LHG981wgj0bWLjNspBeIK0W5yH+kNT6lYhkaQddyP12VZiWBduRjkC
         p9mGiJxrk2CJp0Dwio34558buBk233M8PY2krJJ1J+8gtmU/30TmfzW68KbaUMV5pcNZ
         Rku4HXFv7RfEtFUfMaP5h9N/FtU1Q+zrgrJQPAy3DXX7N3adpg4CsNjn9ofPYl/QCk6w
         l8qxjJ7OlGbQtDulooRGJR+pJhfV6JNWSeUXgDH57K7OMTEVblcRA4MtVGL5jCgkm9iv
         6rKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=OxOAPaEfEVNOm3REKaEdlnX7o7kaMR30L17TAqkm14w=;
        b=0mSYGVSNeepM90qdZvt67BNzoQFwKingFH53/gZaB4JDHKjXxw9mj9hELaX7IOtBDX
         bSB8rLsjQvC5y5gRFEchVskuJWcn4BcEIZlfTUMz43JXdVB4ym5fNe3vinWF7lScy7Qg
         LBm7UirQRtK2IsyU7BwKhfWuL5AaRDn3yVDsVzBvJ7W25JIKN3XGBxmJblWwb25UGCuY
         +hR7zlRv2pHOfG6XpGSpGfrbgT0f815R9ctCSZiQVuDOLeGPKj0qRYmJibUeQsQe23pS
         YikWiXfWyfABbU+mKWNpJ5nvvxwqLwR7Es0rLctT+lW9cKCdTyGccyKcSG9V9w15XmvT
         JNLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y5p+PndB;
       spf=pass (google.com: domain of pabeni@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pabeni@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OxOAPaEfEVNOm3REKaEdlnX7o7kaMR30L17TAqkm14w=;
        b=LSj1GAWIRFAMsV7rTBM/cq5efcoQeM8fA1zrz/2pjQjCG+JyNKwFGerMsTlWZOpLRQ
         OKSAFr/aJb/N3yhTXA8WsQwS7zsSp83v3W+m0Gr3TvQxO1IcF1g1hQy1OX6je3WpxxvC
         WltDxi74H1Ytm86l1g2Hw/FQxcvUwog4liyOAaRSjZ2gXZhjDsKJSJYEu33sBGSF5/uz
         82KzfBPY9x0OybjwWSGGxyj9KU0SzaqldTOP0RQVYZ0qpqPCJkrjnT+qJHMADP1MhO5u
         0dyz35koH31ZBZ7i85a48a6Fwpfm7f1UnBDmEzdd2FnkxK3J8WBPg13W+KxqvbaNbc8k
         mpBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=OxOAPaEfEVNOm3REKaEdlnX7o7kaMR30L17TAqkm14w=;
        b=eIMr7CMbBIBbj0qkMlYY9UzWdFkoXG6O/Sn7MSAbngMy8PPPoL5XrgJ5bEX4QgiWCl
         gT4oO2b6FE4lJW6GXI01EgYaN4wR8nWDrEMokqkmn1Z20JS9f5TtsU2D5RzO84HGeuVb
         j3lUx4VteWwcQrM/CeX9pBjyFm1wlcv6Xpu2y5dYXAKs9sjQwrQrrC9i3SQU6c739IdQ
         fELXPjroAXWniwv7Q2WBb7wy054ox9wHqGY0AR5QFVSfacF64jeJOF8bPZUuxMDQGXgr
         hpJwky0TyhGnHrRVJV2Pjm8qLQHUWBlksNdt7Qg+Ds65ALPMy2GapvhYmVOJ1FbVnRR1
         CitA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plXbKXqJO2YwFNIvAtgFRH1300u1NuFK+0dPIpzmtBzw2W98d66
	4z6SioTwURjYScCee0+83s8=
X-Google-Smtp-Source: AA0mqf45398lXeKTm+kfORY3FmvV186BbUIpHPa2h9yfj2qorxO0B9RyRvNQSFY7bye0gwuyYbeUHA==
X-Received: by 2002:a9d:7a53:0:b0:672:89a:834b with SMTP id z19-20020a9d7a53000000b00672089a834bmr197722otm.80.1671033319693;
        Wed, 14 Dec 2022 07:55:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:7885:b0:143:86b4:f098 with SMTP id
 hc5-20020a056870788500b0014386b4f098ls6756859oab.11.-pod-prod-gmail; Wed, 14
 Dec 2022 07:55:18 -0800 (PST)
X-Received: by 2002:a05:6871:4104:b0:142:6396:5ca with SMTP id la4-20020a056871410400b00142639605camr209500oab.241.1671033318419;
        Wed, 14 Dec 2022 07:55:18 -0800 (PST)
Received: by 2002:aca:a8cd:0:b0:35e:1421:fde0 with SMTP id 5614622812f47-35e551dd171msb6e;
        Fri, 9 Dec 2022 04:37:20 -0800 (PST)
X-Received: by 2002:a92:d5c7:0:b0:302:364f:68f4 with SMTP id d7-20020a92d5c7000000b00302364f68f4mr2682342ilq.17.1670589440515;
        Fri, 09 Dec 2022 04:37:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670589440; cv=none;
        d=google.com; s=arc-20160816;
        b=oWw6y5xXOComTomIH4oUwoO444frmrJCbyhcsIX8PkrsyBpwbigOR+VWYzAOu6BV0H
         mfZzBrtA9reFwcgKS2OmeHVW5iooFbxHARl3c7VNZbnf365wNoDTWVsYx73ffcuSnOMQ
         Tt6Wbwbu70M/UQH/O443hSsk4ZwMtlA5INPaPt/dVnXb0Ukf+nK61W0bIQvDn0f9laBv
         X6ptWH++AdOYwM8RFivhniHEIMizx23UY2DLddVwoa1RkGxL4ZeO9iA3vjTLdUjCk2mH
         YIwOeqPPm9W/rEYJs8CUS2tq5tD6EyAPHZW9+HLbnNyR/b0yxsCVUGUOPVqR+Wpu6psW
         58mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=kKcc7XQPg0UZn1AHNfQ4N2d5zF9JzBW3g3hPGFAB4Kc=;
        b=1IwvaSdNyRuoKY8tJOtWKtjg0KfxDTuZ/nZbRVFX233WNcgiPpwkEjGT+mtu6mjQsh
         dDvA4xTBCHO9DPZJoYjraYxG7hWWcTpV4hIxYKJU2gCfzamYpGeN737syRKCTDvBI4hG
         iHHNMrdQe0l/0wVR3Sq1Dbl57olXjNy7cVkKF4v7+sYwPlEXQQmjS4XjaRAFokHTwv4D
         l0N+wsN8KRwIsYAKWVlH+ieBvxs5UmUf4FyQ8aMwNEsqpNT8l5k+cdhw4uqDoUvnAwHa
         8h4/kJf8teSbR5zbv3lS43nVtZcMwT1ONsuOIDRemc4u0mU6tdJ6P8+799DzaEifiSU6
         ZRjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y5p+PndB;
       spf=pass (google.com: domain of pabeni@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pabeni@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id w14-20020a05663800ce00b0038a5b827993si81991jao.2.2022.12.09.04.37.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 04:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of pabeni@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-54-FHZu83eNNWKEXjxWkYuQ_w-1; Fri, 09 Dec 2022 07:37:14 -0500
X-MC-Unique: FHZu83eNNWKEXjxWkYuQ_w-1
Received: by mail-wm1-f69.google.com with SMTP id r129-20020a1c4487000000b003d153a83d27so1529854wma.0
        for <open-iscsi@googlegroups.com>; Fri, 09 Dec 2022 04:37:13 -0800 (PST)
X-Received: by 2002:a05:600c:4fd0:b0:3d1:c0a1:4804 with SMTP id o16-20020a05600c4fd000b003d1c0a14804mr4752735wmq.17.1670589432835;
        Fri, 09 Dec 2022 04:37:12 -0800 (PST)
X-Received: by 2002:a05:600c:4fd0:b0:3d1:c0a1:4804 with SMTP id o16-20020a05600c4fd000b003d1c0a14804mr4752714wmq.17.1670589432518;
        Fri, 09 Dec 2022 04:37:12 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-106-22.dyn.eolo.it. [146.241.106.22])
        by smtp.gmail.com with ESMTPSA id j10-20020a05600c1c0a00b003b49bd61b19sm9284355wms.15.2022.12.09.04.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 04:37:11 -0800 (PST)
Message-ID: <d220402a232e204676d9100d6fe4c2ae08f753ee.camel@redhat.com>
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
From: Paolo Abeni <pabeni@redhat.com>
To: Benjamin Coddington <bcodding@redhat.com>, netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Philipp Reisner
 <philipp.reisner@linbit.com>,  Lars Ellenberg <lars.ellenberg@linbit.com>,
 Christoph =?ISO-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>, Keith
 Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg
 <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>,  Chris Leech
 <cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>,  Valentina Manea
 <valentina.manea.m@gmail.com>, Shuah Khan <shuah@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, David Howells
 <dhowells@redhat.com>, Marc Dionne <marc.dionne@auristor.com>, Steve French
 <sfrench@samba.org>, Christine Caulfield <ccaulfie@redhat.com>, David
 Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,  Joel Becker
 <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Eric Van
 Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>, Xiubo Li
 <xiubli@redhat.com>, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Jeff Layton <jlayton@kernel.org>, drbd-dev@lists.linbit.com, 
 linux-block@vger.kernel.org, nbd@other.debian.org, 
 linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com, 
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org, 
 samba-technical@lists.samba.org, cluster-devel@redhat.com, 
 ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net, 
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org
Date: Fri, 09 Dec 2022 13:37:08 +0100
In-Reply-To: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
References: <cover.1669036433.git.bcodding@redhat.com>
	 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: pabeni@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Y5p+PndB;
       spf=pass (google.com: domain of pabeni@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=pabeni@redhat.com;
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

On Mon, 2022-11-21 at 08:35 -0500, Benjamin Coddington wrote:
> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting th=
e
> GFP_NOIO flag on sk_allocation which the networking system uses to decide
> when it is safe to use current->task_frag.  The results of this are
> unexpected corruption in task_frag when SUNRPC is involved in memory
> reclaim.
>=20
> The corruption can be seen in crashes, but the root cause is often
> difficult to ascertain as a crashing machine's stack trace will have no
> evidence of being near NFS or SUNRPC code.  I believe this problem to
> be much more pervasive than reports to the community may indicate.
>=20
> Fix this by having kernel users of sockets that may corrupt task_frag due
> to reclaim set sk_use_task_frag =3D false.  Preemptively correcting this
> situation for users that still set sk_allocation allows them to convert t=
o
> memalloc_nofs_save/restore without the same unexpected corruptions that a=
re
> sure to follow, unlikely to show up in testing, and difficult to bisect.
>=20
> CC: Philipp Reisner <philipp.reisner@linbit.com>
> CC: Lars Ellenberg <lars.ellenberg@linbit.com>
> CC: "Christoph B=C3=B6hmwalder" <christoph.boehmwalder@linbit.com>
> CC: Jens Axboe <axboe@kernel.dk>
> CC: Josef Bacik <josef@toxicpanda.com>
> CC: Keith Busch <kbusch@kernel.org>
> CC: Christoph Hellwig <hch@lst.de>
> CC: Sagi Grimberg <sagi@grimberg.me>
> CC: Lee Duncan <lduncan@suse.com>
> CC: Chris Leech <cleech@redhat.com>
> CC: Mike Christie <michael.christie@oracle.com>
> CC: "James E.J. Bottomley" <jejb@linux.ibm.com>
> CC: "Martin K. Petersen" <martin.petersen@oracle.com>
> CC: Valentina Manea <valentina.manea.m@gmail.com>
> CC: Shuah Khan <shuah@kernel.org>
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CC: David Howells <dhowells@redhat.com>
> CC: Marc Dionne <marc.dionne@auristor.com>
> CC: Steve French <sfrench@samba.org>
> CC: Christine Caulfield <ccaulfie@redhat.com>
> CC: David Teigland <teigland@redhat.com>
> CC: Mark Fasheh <mark@fasheh.com>
> CC: Joel Becker <jlbec@evilplan.org>
> CC: Joseph Qi <joseph.qi@linux.alibaba.com>
> CC: Eric Van Hensbergen <ericvh@gmail.com>
> CC: Latchesar Ionkov <lucho@ionkov.net>
> CC: Dominique Martinet <asmadeus@codewreck.org>
> CC: "David S. Miller" <davem@davemloft.net>
> CC: Eric Dumazet <edumazet@google.com>
> CC: Jakub Kicinski <kuba@kernel.org>
> CC: Paolo Abeni <pabeni@redhat.com>
> CC: Ilya Dryomov <idryomov@gmail.com>
> CC: Xiubo Li <xiubli@redhat.com>
> CC: Chuck Lever <chuck.lever@oracle.com>
> CC: Jeff Layton <jlayton@kernel.org>
> CC: Trond Myklebust <trond.myklebust@hammerspace.com>
> CC: Anna Schumaker <anna@kernel.org>
> CC: drbd-dev@lists.linbit.com
> CC: linux-block@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> CC: nbd@other.debian.org
> CC: linux-nvme@lists.infradead.org
> CC: open-iscsi@googlegroups.com
> CC: linux-scsi@vger.kernel.org
> CC: linux-usb@vger.kernel.org
> CC: linux-afs@lists.infradead.org
> CC: linux-cifs@vger.kernel.org
> CC: samba-technical@lists.samba.org
> CC: cluster-devel@redhat.com
> CC: ocfs2-devel@oss.oracle.com
> CC: v9fs-developer@lists.sourceforge.net
> CC: netdev@vger.kernel.org
> CC: ceph-devel@vger.kernel.org
> CC: linux-nfs@vger.kernel.org
>=20
> Suggested-by: Guillaume Nault <gnault@redhat.com>
> Signed-off-by: Benjamin Coddington <bcodding@redhat.com>

I think this is the most feasible way out of the existing issue, and I
think this patchset should go via the networking tree, targeting the
Linux 6.2.

If someone has disagreement with the above, please speak!=20

Thanks,

Paolo

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/d220402a232e204676d9100d6fe4c2ae08f753ee.camel%40redhat.com.
