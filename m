Return-Path: <open-iscsi+bncBDUNBGN3R4KRBEEMU7TAKGQECAYGELI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E65410ADB
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:13 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id f84sf1277087vsd.21
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727312; cv=pass;
        d=google.com; s=arc-20160816;
        b=DnFwkp6yro6n5loC1Cnb8m7kejjqPI2prEOCxWqDxP8RXI9IlQ2Ukhwjeiq7ZSdzSX
         HnuvQiBljGcPW09ASYi5mnrjrO3WmLVS2QUvEWQznMs7kJgFDQqfez29qOMRRDgsCavJ
         6yq2G9tZzyv+NvEfLcZEJNizy0rYIWB8b3ewz5/ZBd3jp4cnhpTzD2jqGuzBaW+4j/zP
         wAv3YvmtPlw4X3V0GJ9yWfZrJfmf5d2eFC6qKHB98TkleZ1olaz7IZzzfo0ePciurz+b
         OLmcokCvafv2nCRa+Ke7nmiruwCnA4O+ytS8m4s9aR6MQBZ7EgGMDvUWj0FtldsYZMn4
         CrDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=eRiBk14vWplbP5kOnirEID6wiraoY5HfAkwwGFDuuE8=;
        b=xTb/8ifMoPTcdTKva6oyCcmZIMyZmOx6Jk2dS/O/yy98I7XTVYJYoT+CgKiP/SS5LL
         abua7idS6fjsRgoabm7HYg9vBkvsmzzBzbkaIciF6gL83irrFEGlvEODNUght4NyH1T3
         10trqYqLFm2xVLccNDWXpzrQXfgIdhqWdkyuc5iDHhl69u+ZYuqp1uXN5K9nE47FKKgi
         yCb0LRZb8CtUeT653+iyck2PvcKBLDAWKKLXhQzl5iIsanN8QYf4ld4v8vE59bzSY11s
         CeOAqZHepz8/yLyN9A4zFc6XEhGKDI4eKnhZ3azoGYZ0N914csUN1ScVUumEcYGc1m1T
         QqLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=AVw7QCQZ;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eRiBk14vWplbP5kOnirEID6wiraoY5HfAkwwGFDuuE8=;
        b=tdbMMsOgQW/oSfJN2WCH2pdvjqlwJlzLDPxTXWTZnVi+hfK/AUDVDBnx/ZUQjfkFdD
         AQ/4EbI2RCvruE0UEvLqOeai9IHaUhNH6Ylb8KEl7vPzT/vqNo/NhwzGq78NtZGaxM+1
         VDzzvAGdaoxoxsllVSP+VpVfBKVjaMFtB3dLrEls7yYGjalr5CGEEKn4k3yAUXR79Dw2
         +7/b81+s4eGZOs7jb7sVH6j+pSDR4tzoEL98XT35AEs21sgkgom4qlqHyuUhTx2e8x0l
         6EsFHzVf1+4tq7Acf72Oxei+QYOwvr4bgxFSkw9RFmq4Si7QdtPju7DIk09bFM0DTjFD
         v00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRiBk14vWplbP5kOnirEID6wiraoY5HfAkwwGFDuuE8=;
        b=l9VoPaKYIIAuRVbxwWk8It7BRYUk7xB1MR/eEtdhKkbxHqN7PKuYBr+8xNNNLdO3aZ
         9p9aI+6qxVlpT8Cjv6Ors+ksrFdiGjVc6b+CJjOWB2DQfLLiSwS7dmDIpNd4OPiGDXT3
         YscDMgcueYZT7RlZyeN3DyOBmNU1x/s7hrz/lYkLIxYIrLPJgvRKfPfhOfCphDJURtwC
         IkTwrcRWfdYJb7X9e6xjtoAPbEowUEIyc5Tvh/cyPkxKUOVr1wHy8iXJNosCkL2LUEqh
         1ONrL2MsOEjh1OmpydltNxWdJ230honBxsfL/DdHlryfwZtuCCovtJCrIRXrJAdhLVEH
         Qh4A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWYlBvBODtsHGtvROgqRkIeqr1heYvxxdA0Tzm/fjs9z08gj+tN
	zN68KgHa95gwGBZfNHb3+yM=
X-Google-Smtp-Source: APXvYqwOzxpzvsVTE9semRJBJBCV62cIK9K179vL/wQBfFb6qrb6pXdgnfKw7u9Ydt+J58EBYQuRwQ==
X-Received: by 2002:a67:fac5:: with SMTP id g5mr17824455vsq.82.1556727312461;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:84c1:: with SMTP id g184ls3229242vsd.8.gmail; Wed, 01
 May 2019 09:15:12 -0700 (PDT)
X-Received: by 2002:a67:de97:: with SMTP id r23mr65736vsk.6.1556727312156;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727312; cv=none;
        d=google.com; s=arc-20160816;
        b=uq8FWrzYOaPXVDCdNYTL0wkRPayz1/Pi9ONiD4svWBit4jvOh4grQ6NGNc3mnilB3k
         IJ6PmCdeo6hPVguUHFZ0H+ruLd6GurzVhWoO31f4UeYdmaF0d0Y52oUlfj0dPyIelNkl
         eTaMcd/HcGIXKN0FVXw+TvSStZO/Lz5hdDOmP1bWvopva3aXwnr6yzsc72L3yJhe9MJX
         l7RnE/61dltRsp0rqG0YHqmDp6GJ43FcVP9dkgr6URt6rPz0y1lp30+CJMhDIjfHWJCQ
         7l/zzVKucuQ7YbLYjmmswBQ5pdJLfZP6W8nAo5ZTTLdG+S3sQ5JO04SI52YuHmYqVIYz
         FtrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ETKz6gU+Zh1sVT+wHucAZ2tKu04QiQsyCfpwI3943/o=;
        b=bvfMAzbFA0AyYOrA3MtPIVbhiyQKp9M/gA5B5/Ldanl6psP7Vv/iLrWfWQhKtXWlQc
         TzNvfbM/LiL0XfMjXzIepKLk3ue5MmsQtQjdT2FhiYVyS9rXuIBW4VioXZ5Q8fw9d2jb
         g7p5YR4ZFhl5g6F5oHKHF4Y7cg/Gimqddgwd0WyfKl78GQK1tGf8dB9+P6RLO8xAZfSP
         ZWOApcGFPSuGXJcTl7VH+NXvfw+pWcCkwc2yfyhWINJkUe1D1WOMc3Yx7eg6bEF0Ep10
         pb0G3qsdcES5PB8h0E9o9LQYTgz76Bn9pomldnFbVRX4z0A4XnDEt5gxQ/5mHlPDbXdC
         PhwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=AVw7QCQZ;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id k77si2362797vke.3.2019.05.01.09.15.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsp-0004P5-4N; Wed, 01 May 2019 16:14:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.de>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Willem Riede <osst@riede.org>,
	Doug Gilbert <dgilbert@interlog.com>,
	Jens Axboe <axboe@kernel.dk>,
	=?UTF-8?q?Kai=20M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	osst-users@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 03/24] scsi_netlink: remove duplicate GPL boilerplate text
Date: Wed,  1 May 2019 12:13:56 -0400
Message-Id: <20190501161417.32592-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=AVw7QCQZ;
       spf=pass (google.com: best guess record for domain of
 batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
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

The SCSI netlink uapi header already has a proper SPDX tag, remove the
duplicate boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/uapi/scsi/scsi_netlink.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/include/uapi/scsi/scsi_netlink.h b/include/uapi/scsi/scsi_netlink.h
index 5ccc2333acab..5dd382054e45 100644
--- a/include/uapi/scsi/scsi_netlink.h
+++ b/include/uapi/scsi/scsi_netlink.h
@@ -4,21 +4,6 @@
  *    Used for the posting of outbound SCSI transport events
  *
  *  Copyright (C) 2006   James Smart, Emulex Corporation
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2 of the License, or
- *  (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- *
  */
 #ifndef SCSI_NETLINK_H
 #define SCSI_NETLINK_H
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
