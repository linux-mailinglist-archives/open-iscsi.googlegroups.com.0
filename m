Return-Path: <open-iscsi+bncBDUNBGN3R4KRBEEMU7TAKGQECAYGELI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id ED06010ADE
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:13 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id x5sf521565pfi.5
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727312; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+sd/q0m8Y5TYpeZZ3oJLYrTK1MzKivWZjJvYWIyrnuGjeISYbd2/qZC2CZ/G7K4AI
         xkURFXLhpFi/KVeKnoUx1n6SvvuZlIDc4SzMT3F6vunOcvpYR9Rh3mgH1uZaOj8m5Zi8
         WB0AXbq6G/ke8+cmLYusNj756Brj/bmvzr7Mp5D8QCdcJPr1mEr6qwP5Udomd4MxhU39
         NyyWf63n9EDyyJLjawHOBLjCP0IW84PHKj6unfl25mdBiSb8paO9uf2SlgV33YN/f5zy
         yMBMbZLd/3QRgcjiiBitXq9cSqBKM43Dn8yqVExbxRF3tDG7yQCmf7d1igSkeUs753e8
         ICFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=LmXiJofPKqnyAucu9NFcJIPREji5DrITvWZKaQm3WNQ=;
        b=sv2tqkuAOThZOjzgSfQJScEsCuIBNqzOFMekx4gY4wTn/7I2LuDPHMvEm6nM8AMTkc
         YevOyzPsa+mwALc8kgSD41tubq0kxvlZ0p32kCck89s6jjtLFuei3mQ+MPBpXC76BL1q
         6ct3u1qfrJ+uxdU6uVznh4YbuUi6WyqHR+H/vFiSgpZGcShcNxjb6TZ7l4KuPb2j+Eu5
         UBPjf9vWAyNTFveH3cTwpEsQsTPnisysAaXw7mMrEfgiwHunoYnv/nk8KW4RAPm/+3y9
         m8aOPCr0oDYDcFrs5Srxcy0/QyQARlKlmt1XPZxc9yBj+fhLDy/6+0fdgnAzC6kpBbqX
         Hmpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=Y1Q8R4LK;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LmXiJofPKqnyAucu9NFcJIPREji5DrITvWZKaQm3WNQ=;
        b=dy9uqKNThRq87TcES7dAhW1whuMj1a+3wPPt12b4Q/Lbxyw0hNhCMc18zMcQx8kQEM
         2gHrbakizah9b27I/mrMr7DP0OegGu8h9Tmr5gWf4J63VZ50XJUA5bod6YLrdl2ZoQhL
         gEyqq5e0k6zAMZc2E0EXrEQ7xspHNBy5UJTmUG1w2YHZru8RNMzvZp/U0k1b7NRfyI96
         XKvnFJnMrP8G0OnLPeckGnxdM91tUR2bE0qY30UILj6tVZSE95H7lwuppLwyTQiJlfJd
         ai4C9ULZwKvJDTc2cJPWMG8EPWd6fHYlIuJ/8ff4gcL61B94jNaEdjYrfAsTU3axEhbf
         EQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LmXiJofPKqnyAucu9NFcJIPREji5DrITvWZKaQm3WNQ=;
        b=RB1/aSJDSVDLQvEZOU0WBxoah+xPWrFDuIZk2GsJNY3SaCEklfazeUHlIPADP2SRSM
         5MfYPxsypTWHlbKo1rtFutepbcz9uVHtcegwNky3/kb5DblW7zkvNBYLtT7uoD+IXLgN
         VPgDVFcyDY5qpFf5AU9TVFOAuIV4PbUMdYvj8v4MBIkTKFEPozjEI3RVs1G+5PvhWJX7
         YQKP0xvGJlEWNengEtgtOEOIpVRsyF/Du2FRdf6bb0RPfZs7fDFr4keggw9QnPx4uA6F
         gqEt/bdNUjo3ADJq1Hl42lMQvh7dtT9xZO+puOfWonfYHYrbvpljrM/IMD8H7SfMDawA
         s9/A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXKejMqAIUvWeAKywQ+iNLTVwSmjBypCgtBClaVXa96xjtXQ/WS
	6RW4VFUBQwD9hEQO5BXtkzo=
X-Google-Smtp-Source: APXvYqzJe7orOKQ7T3DFr2i7W7POpvCN6betjZZ7YgULfj3hPIu2W5OiTGlCMib9PFr9TwoLVgwptA==
X-Received: by 2002:a63:4006:: with SMTP id n6mr1655842pga.424.1556727312261;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a65:64cd:: with SMTP id t13ls1278051pgv.16.gmail; Wed, 01
 May 2019 09:15:11 -0700 (PDT)
X-Received: by 2002:aa7:8212:: with SMTP id k18mr78167905pfi.50.1556727311771;
        Wed, 01 May 2019 09:15:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727311; cv=none;
        d=google.com; s=arc-20160816;
        b=A6o2TbjNZuptIqLH4MtjMS3HgdzcjoW5yMVj5hQKO9LDi1vu+wq8wxmjg4xy+okx9s
         ghxvHx7lYhkICKFRzPPNcc94+je+z/buD+A5JISRoj7MqKYFcycvSLYWJJK8oMu3GlIb
         xA3LSE+Ns5ksnUwInNIB8v3VnwIy425FKIaxIuwo4gy3Z4/0JUBHQStxBmwFcBSR6htX
         syjqPHVCSaMr3ymiLR0R82ttlwYKlYqDQUv3rO/wAzrNuGB+c4HdqkDplOn5l98ded+j
         mavwfxOWu50QuYwwahKYeBoUI6Rgs/HCVHx6kLnKAISaViem4n3Hg1uCAkpUlZkwKK1X
         nZag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rf+zVHOEufIc57I2MfhfRfMgrx+SEyKtZIOdBU8Q4Bg=;
        b=sVwaMvtZ/+DPYNWcA+HpD3p2sFXZStS0KLaRCOdt8ifxPKVcDKVjarkUrgA6osPXEO
         4AyKrcesTf1qfXoD/3cLF5VzLY2XJ2YIRoPrPp+/5vQ8G1F2OprPDaofQbP9hz/jnGAj
         4QmNCtTKXfnU/X+FbJdJxSe+V6dNuIuFoxiznWm0X+fXBj3EZTXRxo4xRQuOIg3V9i6n
         4i3e8y23wz6U4LVD5Hen4EtbulOrJY7AzIhkDAfdGJW2tMsc/vPKCTmMYOdffNr8WHwG
         eHh4gIH+taIBxqyiNAFJDRwYtzL+8MCh32I5aZBCiVkfGwIze6dIl8/EPj64irVByimf
         BaHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=Y1Q8R4LK;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id b85si2183618pfj.4.2019.05.01.09.15.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsr-0004PT-Uy; Wed, 01 May 2019 16:15:02 +0000
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
Subject: [PATCH 05/24] scsi_transport_fc: remove duplicate GPL boilerplate text
Date: Wed,  1 May 2019 12:13:58 -0400
Message-Id: <20190501161417.32592-6-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=Y1Q8R4LK;
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

The FC transport class uapi headers already have proper SPDX tags,
remove the duplicate boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/uapi/scsi/scsi_bsg_fc.h     | 15 ---------------
 include/uapi/scsi/scsi_netlink_fc.h | 15 ---------------
 2 files changed, 30 deletions(-)

diff --git a/include/uapi/scsi/scsi_bsg_fc.h b/include/uapi/scsi/scsi_bsg_fc.h
index 62597d86beed..52f32a60d056 100644
--- a/include/uapi/scsi/scsi_bsg_fc.h
+++ b/include/uapi/scsi/scsi_bsg_fc.h
@@ -3,21 +3,6 @@
  *  FC Transport BSG Interface
  *
  *  Copyright (C) 2008   James Smart, Emulex Corporation
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
 
 #ifndef SCSI_BSG_FC_H
diff --git a/include/uapi/scsi/scsi_netlink_fc.h b/include/uapi/scsi/scsi_netlink_fc.h
index 060f563c38a2..a39023579051 100644
--- a/include/uapi/scsi/scsi_netlink_fc.h
+++ b/include/uapi/scsi/scsi_netlink_fc.h
@@ -3,21 +3,6 @@
  *  FC Transport Netlink Interface
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
 #ifndef SCSI_NETLINK_FC_H
 #define SCSI_NETLINK_FC_H
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
