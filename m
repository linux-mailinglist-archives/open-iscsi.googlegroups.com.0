Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBU5W77FAMGQEMPOQ6SQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id E435BD045F7
	for <lists+open-iscsi@lfdr.de>; Thu, 08 Jan 2026 17:29:13 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bsf6316790a91.0
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Jan 2026 08:29:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767889752; cv=pass;
        d=google.com; s=arc-20240605;
        b=Y9UUs1fezKtdrjmAPyyQT7pUVH1hClA6JKSzIIZbRlTTwUINiYfcihC6uHCxFRvZIa
         r+p3YnK14c6s11/t06rizHpS2zmIkT3qCyeHn3C775Pcb6Wx8lKPND4588O4Hmq2QtlL
         98YhlQL2wfXo2b633d+1sUPOXLkaYVp3bl6D7V+fyApADGY/3Qey/CpGBsAfRz6z4ydP
         HIqPUZShUk36x4PXnwSMHf7iYKzPpbHOYAKvvcUqvLbXaMmBHM8jB8/QVBLgM6GYDVzj
         jgzR1k/ucUZYWi3R4GgMjHErZgfvKRdZokzJKQzUwqXcGm3Oc+WK8kesCO9VguPg1rVW
         bFaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=CRO/73yw2rKriH7USkJGci8/jAiDdyPg03vWEl03gks=;
        fh=C7RYHkYAEdaga+WodVet5FsBlSedXcP/FpNgzj4JP2I=;
        b=Pm/jmWitcHmPbv0KPEQIzE64nPqPINJoVlU6fZyGpicY0LxEGhFOnHhui2vukT8xH4
         9S0NDFtZh028Qhqa+V71wv9Qzg5o333aqJebRM2iNhnCsFlbUlpVNCOlaAwjRYW+7ufG
         nlJd324+uN/NBP19F3iZ+br+h2LxPoAZCjHHF9fUzN5aVagfjva9hTLtELfOuHj5bq0b
         zT1xxLIy/6/hwr5kdw9ibQESPYWEeQOBkyOZYUqlFKZTXwYPn93TcFxcUxUItuaMrVal
         QIKpJMpUnqgcX+HGMWgv0V9kxjn6vslTFxDYZAgQAE8IKc+fPakWEMXSUXuIIS5Zrt71
         /59A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=l1BTFB3k;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1767889752; x=1768494552; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CRO/73yw2rKriH7USkJGci8/jAiDdyPg03vWEl03gks=;
        b=nL4upyUG3DfVu71TfCN30oPd8FkMWFvLR0ixC1JryhQe3OngJ6V2acEPeRayunxWrL
         ub0ppt8u/FWhWAHz4mSh1HkTx1mlgSpNPUGZXgLF0fu9ihhhVVJpfoTScYJsuV1Pbg/7
         3/rNrnnNRO1bVnAPFvw0VMGnKv9gKz4trQ7pKxq09CtaV05wGJ3hxQROpsZXp64VhM04
         pl9Ul7Uxa4LPhO2HG21iV32y4Mdnrvm0Yo7f4TPHrrBUZpB1DNzvt4i4123BhRNRWbzD
         Fabwn2y5BWAZTpvrP4sbFnMxcrQZ7F3vFWaEaILMi8V5waIxPtL5jfwXnD3GR52Y2di9
         5twg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767889752; x=1768494552;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CRO/73yw2rKriH7USkJGci8/jAiDdyPg03vWEl03gks=;
        b=Pon9Upk2DduBA3PND7sdJQcVD4pSj7aVv76BeAitU2iLxBQUY/3VyztRrrYAoY0SmY
         2rv475gnshf6oHJEM3tlbRi9wNSOtog5agPugtrhEX3temXWS8AFiJbTyXjWHclz2G9S
         c146Nl+NR69jWGZUnRV5jj98mG17J/3WSwQLokQqTMOZSVuZmehL3HWAIyV0CtmMGyGs
         ChGZMfsNcbzA7X6fW73xBah1v/rugU7SFbZZJ/VFmBBtMd8UR1mUBeUY9TPm5EAOc02d
         fbtjNxYDLALJevItRDVgpW2tSTJoT+1DtolUvU0GvIn4Mt+gTzoedoYcmdH57WkYuYJ9
         vPWg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUwvBYMiVp4ooX2Zbgsymq0+yUQzA5omIAyeO6y9xL6ab5z2oUXP29krD2KtEf5/3BLyuVj9g==@lfdr.de
X-Gm-Message-State: AOJu0YwsEjLvWch/TyZRqKZ/gpg62/6Sn1JQs/ceUD7CmBtW6XXXo3KH
	yHo2uP91kfuR9KNxsxGOZDbsA2UIBWTuvlZajex+PnqBFEkUer7SwWfO
X-Google-Smtp-Source: AGHT+IFZYe3Ehko95BOrUIoLpyPomF6D7vpl7oC/W0352qThwsVCDDBkN3M6Eme42wOSe1yLnLROkg==
X-Received: by 2002:a17:90b:38c4:b0:340:fb6a:cb4c with SMTP id 98e67ed59e1d1-34f68d231bamr6899387a91.30.1767889750584;
        Thu, 08 Jan 2026 08:29:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com; h="AWVwgWaN4V47pan8izFTY73JdgIzraVYaeVut21m7L3mcm6tLA=="
Received: by 2002:a17:90b:692:b0:34e:b341:899d with SMTP id
 98e67ed59e1d1-34f5e962da0ls3464154a91.0.-pod-prod-06-us; Thu, 08 Jan 2026
 08:29:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWPIs2csBYbt/HTpM6fQC27tRXv3SbmcOQUknn0bLC1Py9yVnTkl4D0Rwn7Cfuh3l++H6dFAhG8uqRZ@googlegroups.com
X-Received: by 2002:a17:90b:3b85:b0:330:a454:c31a with SMTP id 98e67ed59e1d1-34f68d39a1cmr6050558a91.32.1767889745950;
        Thu, 08 Jan 2026 08:29:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1767889745; cv=none;
        d=google.com; s=arc-20240605;
        b=RVK5yi9G2qpf27iRK89ezWbDU/VB550U/4OeQhlrWynAQXYW++EPJAcwGhwHe62Hn5
         WjHROyd4T17s6YzBZE7gzHvq71GmQn+lpFaKwl52vRzfwReI83k+A7RnzHvt7jqnD0nS
         893EDJvaF+nYZQCIEJfqse5TDsaczr+UyNjUPmGSoHewQ2KQJkaNu2pIifMnnQi1hDjq
         P7NHSqSNfVi3p+WRlPPLqQ7Hu3YIypoZmDjpJmhX46R4T+yBLoGpM7gTJv8UUuG07UOn
         8j875QyNAPSJz+aeJrtlxK1prtN/6Hu5YCCcwz/RTzuaFNLAzDSIGzpVRr4r6MplNQdo
         sL3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=/TVhFzE/hoavRBmzZ3BhMnUJxPYngD/P7sTRF4HssFk=;
        fh=L2Q1YihmAJLlzbnkSKUCW4NXGvyM2u640CmrvhII3e0=;
        b=G2BxPO4C7C30rwvR6ldTztxfVBhZkmbHD0BC2z2r1gIREKoc4U5bfXIQUXZKU1Z8SQ
         J/zGtMfzNZcsJNHnkFwujBz0dkvGv0v0A0sE9SyUBg2DM50sASJBJ15DeJkvVkEOuNG1
         /FaeHMTK/ddoafKf/m4+0v2R7QXkC1sd9OKt/x7qmajkT3UWRekdyU39mL9UDVSWIHlf
         gIT5torGZUZ/bUWctdGNN6F+eLq4I5+OS+L9yrWP9T1MjL+/4GV0BupfENi7GCvOb6/O
         Ddtg8aVMrT/4GGgCMWBEzWa3xm7obFsrVLtR2cj3bTMf/ksZbkj4BHR9TajTYiNHyyr4
         mFNQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=l1BTFB3k;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by gmr-mx.google.com with ESMTPS id d2e1a72fcca58-81a3842bd36si203875b3a.8.2026.01.08.08.29.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 08:29:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D7DDC60134;
	Thu,  8 Jan 2026 16:29:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333E6C116C6;
	Thu,  8 Jan 2026 16:29:04 +0000 (UTC)
Subject: Patch "scsi: iscsi: Move pool freeing" has been added to the 5.10-stable tree
To: James.Bottomley@HansenPartnership.com,ajay.kaher@broadcom.com,alexey.makhalov@broadcom.com,cleech@redhat.com,gregkh@linuxfoundation.org,lduncan@suse.com,martin.petersen@oracle.com,michael.christie@oracle.com,open-iscsi@googlegroups.com,shivani.agarwal@broadcom.com,tapas.kundu@broadcom.com,vamsi-krishna.brahmajosyula@broadcom.com,yin.ding@broadcom.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 08 Jan 2026 17:27:40 +0100
In-Reply-To: <20260108062222.670715-2-shivani.agarwal@broadcom.com>
Message-ID: <2026010840-panorama-facsimile-3415@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=l1BTFB3k;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>


This is a note to let you know that I've just added the patch titled

    scsi: iscsi: Move pool freeing

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     scsi-iscsi-move-pool-freeing.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable+bounces-206249-greg=3Dkroah.com@vger.kernel.org Thu Jan  8 07:4=
6:17 2026
From: Shivani Agarwal <shivani.agarwal@broadcom.com>
Date: Wed,  7 Jan 2026 22:22:21 -0800
Subject: scsi: iscsi: Move pool freeing
To: stable@vger.kernel.org, gregkh@linuxfoundation.org
Cc: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com, James=
.Bottomley@HansenPartnership.com, martin.petersen@oracle.com, open-iscsi@go=
oglegroups.com, linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, a=
jay.kaher@broadcom.com, alexey.makhalov@broadcom.com, vamsi-krishna.brahmaj=
osyula@broadcom.com, yin.ding@broadcom.com, tapas.kundu@broadcom.com, Shiva=
ni Agarwal <shivani.agarwal@broadcom.com>
Message-ID: <20260108062222.670715-2-shivani.agarwal@broadcom.com>

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit a1f3486b3b095ed2259d7a1fc021a8b6e72a5365 ]

This doesn't fix any bugs, but it makes more sense to free the pool after
we have removed the session. At that time we know nothing is touching any
of the session fields, because all devices have been removed and scans are
stopped.

Link: https://lore.kernel.org/r/20210525181821.7617-19-michael.christie@ora=
cle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
[Shivani: Modified to apply on 5.10.y]
Signed-off-by: Shivani Agarwal <shivani.agarwal@broadcom.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/scsi/libiscsi.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2902,10 +2902,9 @@ void iscsi_session_teardown(struct iscsi
 	struct module *owner =3D cls_session->transport->owner;
 	struct Scsi_Host *shost =3D session->host;
=20
-	iscsi_pool_free(&session->cmdpool);
-
 	iscsi_remove_session(cls_session);
=20
+	iscsi_pool_free(&session->cmdpool);
 	kfree(session->password);
 	kfree(session->password_in);
 	kfree(session->username);


Patches currently in stable-queue which might be from shivani.agarwal@broad=
com.com are

queue-5.10/usb-xhci-move-link-chain-bit-quirk-checks-into-one-helper-functi=
on.patch
queue-5.10/crypto-af_alg-zero-initialize-memory-allocated-via-sock_kmalloc.=
patch
queue-5.10/rdma-core-fix-kasan-slab-use-after-free-read-in-ib_register_devi=
ce-problem.patch
queue-5.10/ovl-use-buf-flexible-array-for-memcpy-destination.patch
queue-5.10/cpufreq-scmi-fix-null-ptr-deref-in-scmi_cpufreq_get_rate.patch
queue-5.10/drm-vmwgfx-fix-a-null-ptr-access-in-the-cursor-snooper.patch
queue-5.10/scsi-iscsi_tcp-fix-uaf-during-logout-when-accessing-the-shost-ip=
address.patch
queue-5.10/usb-xhci-apply-the-link-chain-quirk-on-nec-isoc-endpoints.patch
queue-5.10/scsi-iscsi-move-pool-freeing.patch

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
2026010840-panorama-facsimile-3415%40gregkh.
