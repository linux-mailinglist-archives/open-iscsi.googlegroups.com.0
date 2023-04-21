Return-Path: <open-iscsi+bncBCYMVIPVXQMBBN5TRCRAMGQEXMQTCZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2446EA2FC
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Apr 2023 07:06:02 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id d2e1a72fcca58-63b54d92622sf1342558b3a.0
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Apr 2023 22:06:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682053561; cv=pass;
        d=google.com; s=arc-20160816;
        b=1CWWe9aPyZ0xdrs5gPbbP9nHRDT13LEkHgMZ7IPJRuvSnOnwFitQ7k/XsiON39MTzo
         hEUJ3w0IknCwINwY54nG3h1KaWEvibzDva35pEYdO76wQOUdqYjFfWsvtKgVQGx2kfx6
         mWCR7AKD+KMRZFCWB5Qow8kCRmssJ2nzaYIigyu3/YF3D+MKxStEIxG1BsKkMcmjF9yy
         sICl6szfn1g/pZ2wm65oYM7AQiLL69rZyTxh/34onn2V2F9D9abJxLyQnxxRPxV9X3NV
         0whR2//1KwO2vNfjtt5p53bdNynLpaSKen/TGqpSLlbazw3tRdZ89jPVZVSrx5UBvW4+
         kHmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=yO5XlQgcYmGa2zdXz9v1G+i7QXVms8OEw5T+HGAl7zo=;
        b=PlsDvOpYQBqsitSRY6Z8c0tERjVibkcHRYsbU8+VUJ5HDZwRTcPn34nJAE4smg1S3A
         13COSSIU4bO0hrMH3yc8KorJOtsHNE1Lbd5r222wPVUCMAAFJGZbAbEf+Lel+n2Y3jOD
         6AOlKnFSCMVG3ejKE/UR7CbDXAA/o3AN8D71L6xOyuxWXwLAPvtowA4YN49Msd96TzVu
         +sLlnZf7YanY6AnLZmWXW23sV8MxxD1PgszXO72K524cpvRD/kmSaG8G9UQ7oS88+kOR
         cRGFvm6B+xFWQNv5jBXSX6/kI7B3oSf/d7pqHDDNDVR5AO50oIwIeHhfax8+WZVy+YtX
         ArUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FzQuLcB0;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682053561; x=1684645561;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yO5XlQgcYmGa2zdXz9v1G+i7QXVms8OEw5T+HGAl7zo=;
        b=rH2vzWR9cdFsYdwgtIKF1jjRk7mSwd5cboAai160ERiHDxK8rS116Y2FNsJZ13JER0
         ZZggj4NdxbFY4OBItaScGpQb7FDDohmrQ80x8JFp4P06k1GfIT53kSWo6eJsC3OZ76kC
         WzBIGS9/otYvDPHNRjCKBVIwHBnJoES3RANxQO19oWqEdcy1GNzMJF2/YJdnzi9h4lUY
         waXiP8q9Zvc6FqA1km5SAyS4pvNEe9Gyxj6p+hCYjvLFZ3qsFTwOKP+h536cas9F8/Oq
         SPkOmvtow13ubNMVwJGNuIWTPau/2LZA/X3FPsIC+kYoMAB2M3JAdk1epcH7O0/RY3W0
         ywXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682053561; x=1684645561;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yO5XlQgcYmGa2zdXz9v1G+i7QXVms8OEw5T+HGAl7zo=;
        b=JrB4Ms9+414D59qKRbon8JRINYYehI815VC1gX3qL1QXfabbpFxMBWnrU+smKNXw7g
         xXP56gA+cdyM50J07jTiuFANGZdVLWReSC6TKiiV966kwDBSN8U3XHexf700S2ahtN7w
         7X+ECvYVvnWntO5TQbRA0+u6TiqXVvljDv0bNlYkM18sUhUV+buwEr+gooRQDO7HR5TS
         4MQBTYLEnwiGUIpFsWUUUqv7OvMwqCoiaxTYot5j4BU/3B7KXc8xkWzdYos0EMUvHLqD
         QGNecXf3N7Ntfo/HVqW4NoJUDAwHoW3MA7RVwBbLE61zCmugW2tehPsccM5sXgessJnt
         F7Rw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9deEMMRw4VX/yIqnuGXRQSq0gHO+Z3g9xBjDyfOZ++BBKUGeCfd
	s8PdDjjNRR8MmqXvD8Mm7co=
X-Google-Smtp-Source: AKy350aV8rKbGqfaZfRmcOEiQR+xPfp9Nj47XTjm00RHb36dkkYNDteDKhF1r5eMoB7BLej+icw+Nw==
X-Received: by 2002:a05:6a00:2e97:b0:62d:9bea:2a0c with SMTP id fd23-20020a056a002e9700b0062d9bea2a0cmr1652133pfb.4.1682053561322;
        Thu, 20 Apr 2023 22:06:01 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:2602:0:b0:517:a9ee:45c1 with SMTP id m2-20020a632602000000b00517a9ee45c1ls914963pgm.4.-pod-prod-gmail;
 Thu, 20 Apr 2023 22:05:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:14c1:b0:63d:47c8:856e with SMTP id w1-20020a056a0014c100b0063d47c8856emr5134206pfu.2.1682053559069;
        Thu, 20 Apr 2023 22:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682053559; cv=none;
        d=google.com; s=arc-20160816;
        b=ppfFg7IvyR0VKlIHFi7V00LwDDiHNcyNrE2pC/ogD/LO+ygp6PLFXDOWM7Eh6m94zc
         nCPRTAXnfHBzIRV49duj1WydhCVFZ108dWvAdX3imV6XddqK6ReSs7CrdO2wH0Fv9L5h
         oq68VVLsk2p3RT3qpBZgNRj9fpd6CBw6HzUiERcmvDHcpwwUD8WZH5PfG5gVjr5Pk1x9
         qVhvjxMNtzSiVoonbZP1rC0NH9ExBS0O6avpXlpBfpdBHdKpcko2qpxNL1PWW/+ITTQf
         0JtlPKWCBCv6tStgaPLR/MRVFctTE4oVFHtni2bbELB7/LeLaHdnlq6Vzv9IV3JlLh0G
         K8NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0q9oxwPDsSiWxgEq0uCvInxnqKmFGfsxHg50UrYoaWY=;
        b=C0xAa1hjgs3HpoBaaeiz7lSk2Up++UPghuqcukY8zbDye7EXW6HiE2iBIUNsyU9sHw
         m0wHbWLZ4qHBemk+5tfZ09Z9hxveJI2A3DDik/klLyewYU4Z3EOL2kI/ZmVeTwO4hMyX
         I2alMTvvTrXPR8Mlpx1jaN0qiTFkGFHQNNA7jW+or1zcPdkXf+5XYsC7Oq9zKRLXHlgJ
         xO8XYg46RiHXDif9iSjlPQBxiTU/C34NWBCuVFXfy5l/kXYaOw67Gu5vLkGUTQ5fjFRk
         l/SCF71+333oyZUZtX0VHW6YXdTA4SfiI0ktamu+9ADvOFFiu12yQKnEupH3F4zx2IN6
         pzAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FzQuLcB0;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id o16-20020a056a0015d000b0063b78539553si151442pfu.3.2023.04.20.22.05.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 22:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-QL6K3lDeOVaIDaN80H9LAw-1; Fri, 21 Apr 2023 01:05:53 -0400
X-MC-Unique: QL6K3lDeOVaIDaN80H9LAw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 552721C05EC3;
	Fri, 21 Apr 2023 05:05:53 +0000 (UTC)
Received: from localhost.redhat.com (unknown [10.2.16.204])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BEC074020BED;
	Fri, 21 Apr 2023 05:05:52 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <leeman.duncan@gmail.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: Re: [RFC PATCH 2/9] iscsi: associate endpoints with a host
Date: Thu, 20 Apr 2023 22:05:18 -0700
Message-Id: <20230421050521.49903-1-cleech@redhat.com>
In-Reply-To: <20230420164232.GA27885@localhost>
References: <20230420164232.GA27885@localhost>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FzQuLcB0;
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

I managed to fix the iSER endpoint issue by making endpoints created
without a host valid again. Once I had iSER working, I went ahead and
made it network namespace aware as well.

Only tested with software roce (rxe) against the kernel target.

I think the net_exit code might need to do a bit more with iSER.
I'm going to look into that, then I'll merge some of these patches that
fix earlier patches together, and get a new clean version of the set
posted.

Chris Leech (3):
  iscsi iser: fix iser, allow virtual endpoints again
  iscsi iser: direct network namespace support for endpoints
  iscsi iser: enable network namespace awareness in iser

 drivers/infiniband/ulp/iser/iscsi_iser.c | 13 ++++---
 drivers/scsi/iscsi_tcp.c                 | 10 ++----
 drivers/scsi/iscsi_tcp.h                 |  1 -
 drivers/scsi/libiscsi.c                  | 12 +++++++
 drivers/scsi/scsi_transport_iscsi.c      | 45 +++++++++++++++++++-----
 include/scsi/libiscsi.h                  |  4 +++
 include/scsi/scsi_transport_iscsi.h      |  9 ++++-
 7 files changed, 71 insertions(+), 23 deletions(-)

-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230421050521.49903-1-cleech%40redhat.com.
