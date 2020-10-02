Return-Path: <open-iscsi+bncBDLPRE656MLBBM6J3P5QKGQE52RASWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A01280ED7
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:28:36 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id i10sf284171wrq.5
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:28:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627316; cv=pass;
        d=google.com; s=arc-20160816;
        b=B0aHO1CeRgZ+7/HrAD1ohNSY88k+ffiKzUHMo9TQHTo2iOUWxWJ4s5Am9MbLpqkNHy
         enmM2p+wDHQUgn5VoLCGj8A1kc8SfiAwLabztqpBJgE+RLYkvzybWQ653Lut38kj/2ak
         pIJMaZtIyo69pya/r5SvxjPr+z+yh+gPF7002JyH2jWyUkC691oSkY7kMioLvn9ZUE1P
         BEC42yI08c4IXAGx64jBZOD3PseAbKW+/i5G3slacBTStDbZ9N0XJa8rl8LGiDeZdV7A
         KaXz9xa9ChPcykx2pTSJYuXJBXqjXLb88M16LiNBau0CTBdyoNie0+N4QIKOeULs3Oav
         qUuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=FnrVebUSmpUQKclwEoi45uoWWnV+tq0PuLXyLA11Pt8=;
        b=Z1ly7miKZyGFUsNcSCrUtea6OK0vyllAw1FSOoq69rZOPBE7LFxaY0LWy00k9+9NiP
         Ez/5XCHthDjsZrnnUBULYDGcvwGy7O/TMs4msb9r0sat1GjOU0fjZ2zOxwT4Vh55Kv+7
         9FNvE4jVIb+gtk4FiozqWOi7fOgIUwQzJba3ssO0U/N0koGrLbCegGeL+NGqsnJjZOrW
         mZ+LXrDuonCI1iJUMaA1b+b2RyeM9ErWdOsDfGuws2nFL1aWt06tmyDLBGujP953dLbk
         WxPqFANQ1LtoqtzDjqFGFute07OSqbv+m19V53q2ICOakhDptnu5gyuiUZMlme4/NdNF
         o+Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FnrVebUSmpUQKclwEoi45uoWWnV+tq0PuLXyLA11Pt8=;
        b=fuLSc31oyKYYsGuhSM6cs5lRqzxBL06ZMMw7xy3FQyNyKVdRNiveGRRxPfjlvXYGAu
         U2UkGC692Dmz0UaQ6bqvDuCK090Ny9rUACctHLew/Cjwp7qursePGu+s8YMP8F+JgaCU
         oss5+Fh7C9maekCSTY2QFsZ1RpBjg+XdLvka2SCXP8AG+dfJ6HEDc1iQPbWprPb5xOPp
         vbF8l9PPqUnoZrIB+YeNoAacqd8j/0tGfFvYPJghYE+3kIMnYEdNUI/2RpJFrk1uZzQr
         uj3GRpyDJTh7Mulpk+q+dJxJhWxchnhv0zy2YHPBTUwr2LW3qHKxDgUtEW4eJqpygRIt
         3IEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FnrVebUSmpUQKclwEoi45uoWWnV+tq0PuLXyLA11Pt8=;
        b=GdthVH3dZv3PR2SR8KQn9j6Eycf9n511O10OBGd5BU+eeNwDreE7JSBn5KrPBG5SQS
         5nE/SHY9cnf2J+8KAPUID5Gd4LpCvIy0al5liFJB3nkjQSluLA+mGZZ5RR/TkP1hBSPi
         GurmbUbknoaxiSd7DytgYoNihfg1S+M2YX6HJ7Sc61r4ZImeGrQiR/uYqbf/PWWaz8fm
         ATLCmZQa0aJRHtFRj2SuG+cYJ4SThQ90Xu5I4h7H5tRuHHnu/sghzYsWCQjHTRzilaYG
         sKyEg9ulOHdA+PcVBEHWKWoHrO7aFS40fy9x9tmgN+mfYdlcRdTVZtmOhoq8MZIBNs4x
         eDCQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531H1fTIbYAkFL27/ftPyPhBA2+TH+ldt7+1S2mO3UNPF533bmTg
	LyPOCcDDjLqSABLrCEtyisk=
X-Google-Smtp-Source: ABdhPJyhidF1dMU7LWaRGPv1vP+vaFT3aVHC2n4SB1b4vwl+BuKR5p9wMvUsS4FuYNYSuAJMHa6Erg==
X-Received: by 2002:a05:6000:100c:: with SMTP id a12mr1752923wrx.115.1601627316065;
        Fri, 02 Oct 2020 01:28:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:98cf:: with SMTP id a198ls433472wme.1.gmail; Fri, 02 Oct
 2020 01:28:35 -0700 (PDT)
X-Received: by 2002:a7b:c7c9:: with SMTP id z9mr1605716wmk.91.1601627315269;
        Fri, 02 Oct 2020 01:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627315; cv=none;
        d=google.com; s=arc-20160816;
        b=abOaLAiproE2h+RsagodCYxqfmp0COLXBTPTfuD5v7T/yDiVphl2Dt4s7VgWn411qv
         sBSla87jt7/xKXZEWiZMlvWfxpFp1yQoKOnzAhChcvdNHmBEGM/mNATwFdvWRw9FpI0e
         GK6KC3WYhMdQym3j+Aer3osdTxuLtZcUgTovd4W1g1QMhC456PF3qqLcIs3WBE6ac9c8
         VqwaN0VCKzZ9TpOPX19Uoc/ff/AUvy3d0MO1w8rDidW/3a7d59mpp0yor/WEh5jhcyZI
         pe3GdtLDC1YTs6NqlQkaQDxHUO0HkQOldLAM94IbMvGwdlrvyaXZYLKQVqNYQIk9W9xr
         /6bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=EiMJAR8FkprhXpGpK173nTDW5MokIg6PAPOR2nQMaWI=;
        b=NEJqsom7h84yxYXQC80VHoUHV4ImyvG4bLU8lXXlF+VvjBF36kySApxZM6iV7MrHHc
         RClxukaIxp0RCw7BUMY/rV0peChkT+qwtLUakXKk5l9j7mar/ziAliiqxjg+LPGPlVxx
         tjIR5vWMf/e4Dx+o1kC6EjyTYIthYSlNJaJnHRiUzEsHdGlpRWKsTf64onAdnJBY3C+G
         3dr7qMe2OerezTfAwdEmII/s+7+oDIo5wy0YoVvSliVOEnLs2TWNGbLh10ylTZafdnoC
         X5DCgvCSWlVr7JYSm+kXz1FCw7NKuZdwQRRGubwXpEY2MJgrrRJ/DWAE/Gl57yBiTPGl
         HvLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c144si18585wme.2.2020.10.02.01.28.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id E8BF0AF1A;
	Fri,  2 Oct 2020 08:28:34 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: davem@davemloft.net,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Vasily Averin <vvs@virtuozzo.com>,
	Cong Wang <amwang@redhat.com>,
	Mike Christie <michaelc@cs.wisc.edu>,
	Chris Leech <cleech@redhat.com>,
	Christoph Hellwig <hch@lst.de>,
	Hannes Reinecke <hare@suse.de>
Subject: [PATCH v10 6/7] scsi: libiscsi: use sendpage_ok() in iscsi_tcp_segment_map()
Date: Fri,  2 Oct 2020 16:27:33 +0800
Message-Id: <20201002082734.13925-7-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201002082734.13925-1-colyli@suse.de>
References: <20201002082734.13925-1-colyli@suse.de>
MIME-Version: 1.0
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

In iscsci driver, iscsi_tcp_segment_map() uses the following code to
check whether the page should or not be handled by sendpage:
    if (!recv && page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)))

The "page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)" part is to
make sure the page can be sent to network layer's zero copy path. This
part is exactly what sendpage_ok() does.

This patch uses  use sendpage_ok() in iscsi_tcp_segment_map() to replace
the original open coded checks.

Signed-off-by: Coly Li <colyli@suse.de>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Acked-by: Martin K. Petersen <martin.petersen@oracle.com>
Cc: Vasily Averin <vvs@virtuozzo.com>
Cc: Cong Wang <amwang@redhat.com>
Cc: Mike Christie <michaelc@cs.wisc.edu>
Cc: Chris Leech <cleech@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/libiscsi_tcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi_tcp.c b/drivers/scsi/libiscsi_tcp.c
index 37e5d4e48c2f..83f14b2c8804 100644
--- a/drivers/scsi/libiscsi_tcp.c
+++ b/drivers/scsi/libiscsi_tcp.c
@@ -128,7 +128,7 @@ static void iscsi_tcp_segment_map(struct iscsi_segment *segment, int recv)
 	 * coalescing neighboring slab objects into a single frag which
 	 * triggers one of hardened usercopy checks.
 	 */
-	if (!recv && page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)))
+	if (!recv && sendpage_ok(sg_page(sg)))
 		return;
 
 	if (recv) {
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-7-colyli%40suse.de.
