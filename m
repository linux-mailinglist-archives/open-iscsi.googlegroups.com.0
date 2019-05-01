Return-Path: <open-iscsi+bncBDUNBGN3R4KRBDEMU7TAKGQEZGAIDUI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E49210AD9
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:10 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id g6sf9052928plp.18
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727308; cv=pass;
        d=google.com; s=arc-20160816;
        b=HVx0f+UuqvMBx8eOjlcmsJWeqAzFLAfhnpJ2hOWaP8RroswdGOJ40ihm4S3/D2n1ga
         w4zOq4i9lFrPVAiU2IN0nNDMJoe48BaaeItP7A8fhV20F+SG3gpriuT3Skx2vSlO9w4D
         QEVn37G8taIBkR9U8+q0fhTNEiiyFk7QcwFAlIpPu28EsOohSUQr07rp7zRG6vh9i30v
         b16aEIkneKRGrMHKmpOtyFd64ZYPjkK767f+0uzi7sRHSIRq7it1qn6ww62ljdLhfA6m
         dcZquvdLwx6v2uafDnFf77XntDC3RSY+YAPMFhxPwWwYnUp9F6L745/JadfNsctQu8X2
         a4+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=mWcV0VFGwajVVupcBkZzWOJrO8kLBI65jAyB1hAgZ3A=;
        b=fSXi2OradxCAUsFB6DVo1fqH0l/2rkTegSdw+me/O3YZET09+5MPpj+yqSisbP6KNZ
         6C9ukjNClcnYO22PJJEDyHHJ8uLQ0D2LF6M+RBPJt7FHcT8LuNkxIayblCNvesdtEEwC
         c33mVwPVcnZ6e8q5OhtWIZ+dT+uj4CcT0yFiO5CYvPssVcgpZxXGdRHYcpBzvvb/HyGn
         67GD9bdHSPeE6hyDABVjxKVQNPAxWyRzTl0dB5NgQgV8tYJQHnv16Mu7YnMt9WqQthUg
         +y8C6k/0eZV879XYUZHMqWoc1pNPn7yXNRoiClCOWK7eIkJYBNfI63QXEt3AuluwR8HK
         3BiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=A92pWCzA;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mWcV0VFGwajVVupcBkZzWOJrO8kLBI65jAyB1hAgZ3A=;
        b=ksGYNo7KL0EnU6y/LDNYkhdryFoSvtaRZDcOL+9IbwFVjHxgbxrZ+rW6s7l8WE8rGT
         2O+Te2Rab+dCI77zn/sivNIOFAFw4WdBTgsl/OgUXLoo2LtEsbWelYNkVw2cVbNG0Q+i
         H5xqH7lsAA9DK1X69/vCr6xyvFQVHpt/tHlvh4MFFw1ARY5Xv79dPdHi+A1cgcglgKyI
         i3z2jHr3WyJA05NPgqfPHL9oaMY15Ut6FBRbq+ps3Pz8mPjvotUlGK3bfSnwQZkDii2s
         XFuRGm+Uo/pv1YFgV1nFf/NaMmN7tJpxfqEyz1wd+RE1XarTcKrR4bkkbeAaSmlPDURE
         RTHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWcV0VFGwajVVupcBkZzWOJrO8kLBI65jAyB1hAgZ3A=;
        b=WOp9YRUaunsLRghttmrfYYbwuH2FshyhUWFQ7z2/Kik86UQ6B/KUwh2VXhDmHkCl2z
         j4EZ1bSOKPI0ypuTmyJYuxQsrab+y95wtmMirmH6spRXP6JBHfXGnfSJaW4csm4vdjPU
         Vb+Vh2PCw/cCbAzogEsGlaAEhnAvTeYvulqWb+QStF0pauTI2JAVo2iLdnEY6V7g5pJl
         h6FTboOxDJe+7zsqtkMjCVyC2a1XkNmFLZuBbWoO8LZ0r7hHudjAPNKf27KfPQ6liuKc
         B725maPtEL0+6psUFqYJ94Vn8dnIpVQpg3I1DyGj3gFhE8ofQ//YOb7/QWjfzOPfnVeU
         JIGg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUWni5SS2R7mAZMSX34F9NJ5uVlTiIrYPr0/8D3CGF2/p6aXB//
	UYSPc5rTLnUmUdMS/l3srxM=
X-Google-Smtp-Source: APXvYqyN0cySWB6sdeY/WO3ec0o+Ce5PLu6iU7xuUVvnvrPO+g95iOILbvJZPWK7yswOEjHQeGfWwA==
X-Received: by 2002:a17:902:9042:: with SMTP id w2mr18166501plz.91.1556727308614;
        Wed, 01 May 2019 09:15:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:28a2:: with SMTP id f31ls6986017plb.11.gmail; Wed,
 01 May 2019 09:15:08 -0700 (PDT)
X-Received: by 2002:a17:902:968b:: with SMTP id n11mr77178322plp.118.1556727308105;
        Wed, 01 May 2019 09:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727308; cv=none;
        d=google.com; s=arc-20160816;
        b=SHMjvwjEfC/l9YqmnkpPV/lqYyBPrhAaVnBYOkaO8J+LhBGK+tabkPwje7jrzUrW2a
         8cPjGG/jpN7mHkJBKXyC7Is1WfUHM2+uSfsWFKwCqM/rsFqij8ORbQN9IL0qfmVW0siV
         nlqcd5qJqPj/GcVl7A8C758Msb8NBid6zCm0Gdr6bMDzkjMbN2YptHWKfDpqhwnQYVnT
         6zjs2Jh1cV91sDUHWb4O4cNIzgDPbuZ4tCRe3n1EFjWr6E6+aTCmH0SiZPeyeCwJ5GSr
         ZoPIanUvpRJpm22EZdhikwscsl5j7bQXiMSs+iEuqyQ3kBKts9OyibxM0c+DDCtSGDE4
         YpaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9gqGkobIhZryEowiPA+7IhnJAwe31pJ4qW8m9/0O+C8=;
        b=Y/qVd9VVT1Meh17/JcQ8ogQmv84V3I9QMVV5kbQdKr09FhOyPgVBduymSxhTF5IPD0
         7lWTo1rehhY6mOEYmJDvy+6ntkcL0XbzNhqRNsEZJVjqRuD2OHirpA+wmUIEf9jnfllT
         AzA9gkMg4AMQxQbA+VHCtuqLcrqtT2ftDcshRaUqcTsvK4+e2nMoAOVxiagc4sTW4eSN
         32ioylZv9sq9s15xT1QxFu/NRzC9aRQkiULsYx3uamwVqVBUuAaNryt10iueUABj9kNJ
         X4/e61IRfKImLkG5vtD3DgkdpHIP+jTjrqWbzsFHoEPl8KU+fWXq1cox60DNa9rfYlHr
         D6+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=A92pWCzA;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id f132si460256pgc.3.2019.05.01.09.15.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsq-0004PG-Fj; Wed, 01 May 2019 16:15:00 +0000
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
Subject: [PATCH 04/24] scsi_transport.h: switch to SPDX tags
Date: Wed,  1 May 2019 12:13:57 -0400
Message-Id: <20190501161417.32592-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=A92pWCzA;
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

Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/scsi/scsi_transport.h | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/include/scsi/scsi_transport.h b/include/scsi/scsi_transport.h
index a3dcb1bfb362..a0643b9f6f13 100644
--- a/include/scsi/scsi_transport.h
+++ b/include/scsi/scsi_transport.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /* 
  *  Transport specific attributes.
  *
  *  Copyright (c) 2003 Silicon Graphics, Inc.  All rights reserved.
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
  */
 #ifndef SCSI_TRANSPORT_H
 #define SCSI_TRANSPORT_H
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
