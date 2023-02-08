Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBO4DSCPQMGQEUAMNWOI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A44868F89A
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 21:10:38 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id a17-20020a256611000000b00889c54916f2sf11047721ybc.14
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 12:10:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675887037; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ud7hpm09Cvv0ct/2+g0XrQwbjhNom8a/8jXnICkm9F755ra/+Z5S0Cvi1Y1teAQtXM
         Vk/Ri422rmc7mYWM0LdJqsquG8vSQIboT+JADSmtSbBRCdoPX1sDja6fE5KEZiDnm4z6
         wRNruJcdWHKIQNPZfouCE6kD1IssLUG4rDjXL+8FJaNrWN47LJznVL70o5wapOwd+tNB
         n3qstDpTKnWe3b9o3z6k1EdgiixEaGOkivVxHTLp7mLmnirVbREVozobXgeY7JZVG/Km
         UDVfWSZsThFDgDpayQv8cj3ZP28IoxLepTAOu4izVN7isRrTnJX9oExTGdPRDxDtxQnk
         LqYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:in-reply-to:date:to:from:subject:message-id:sender
         :dkim-signature:dkim-signature;
        bh=1pGajDt4Fwvr2laSui5Nppm2LpQDwyo2QiNLK28za3U=;
        b=g18/mWj822SHAuJUlSIwAOkRqi0C7IOzeF5FN8dtx6t9UwbHACrIComwRCaRua+Jc8
         mhczIaV4UOERmdhKqLZHEkz8t0LulgjaSmzSomEdmAA3I2edDB73BTUSUbwHIghdnbth
         A/oST0jD1A1fJUdbXwuMoWFt0TteTl8Rzv+qasQ1kfmxorhAOKNJerB/HeZKagnh5pvc
         0BM3COmglZDdUHVM6a7wVRQ9XdmwcIXgWAvxSSSjFOMVqEMCKtflqnSiBTYaCnyrfzMv
         51MiFM+BI54Ru0XxFazXkXlmKG7SIMPfcasCYlj1ryw1bQmMVyZmxX6KGVgYa0c7M0bI
         13HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=j5oHDFFy;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:date:to:from:subject:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1pGajDt4Fwvr2laSui5Nppm2LpQDwyo2QiNLK28za3U=;
        b=Le1e4agI3eo11ZKQhYr5xj9gbLY7dzcQlE3d7m+cpwXh/rlkTI98E2K/i4+JKIAcvV
         ubeM8HcIvc7yGtyTsNiApd9zGp9y0YQnLyExZ4UJG+vJYYOaE1hkVfhwfCuRikXUFmau
         K641JS140Bo3uCD4pfoNc74zsfYHlRiZlcTAwPVAAtF8Kr1Dc3do0ySeNS9+OHPtlS+I
         3Q9Nngh7NbMx4CJLIWENKySZhXpjnlmT4yWEq/hrgV5tOIOPhNc36ayEFC69z+yT8nRM
         OOBTqlQlktTIl8gCRZspv7sfD3AkNkFpT0/9k2zHT8nnkwloT4XLlXyxrgnaKTYKi+VD
         ZAMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:date:to:from:subject:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1pGajDt4Fwvr2laSui5Nppm2LpQDwyo2QiNLK28za3U=;
        b=Q1vHd/hiV1SfeXB3s3S0faAQmsihLdnLX16XBjFFPMnoYjhwB1zI5gpT8lJzw0rszM
         +v9SDNrFOT/DSSqDnI8LQBkpOmGGXyb7TM4HZzxIiZSzspE53DN805ZAN1aiMOcqJ2Rh
         wgTUbd8eekT0xaBiizJDgdoR1eFL2MOb8hMHL+L7PPQ0MYgX8+av3JCNY+IaKUF/NW+a
         1Za73VRClteL4hwZT70raOOPqjW4KHBj4vG52Lw3PBme3e9BVH2KRJO4sB/ZopPbrZuy
         kERxSkgUiKNkfzWqzWn1/gl4Kw/no4GBhwVTvYKKPAVSAWhGxd8GsycERmYKHCQvsgfw
         RC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:date:to:from:subject:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1pGajDt4Fwvr2laSui5Nppm2LpQDwyo2QiNLK28za3U=;
        b=GTMAU8Ruv9oqsSeRSCGuU4FavhxmIzDbdgJspKlwCOv4lsGc/BBnvOUUNOjN6XJa6n
         Vl929erA7Ux/OggZ0xyOKAOZi3CGfzw7CQHK1N29wFzzGoqKsO/Vrgt5ATmeJDwQtKFE
         Zw79p9h3gh9bkTbMNYxHYsaM4T+2sD63hj8Mk6A+HAHu4K5CziT1mKnbKHhJO7BD3idm
         DQT0ThkPDLqvTtA8n8DsOV+U2LPXcIBxVt2ZAiKlKNHVvF8/4rxT5m4brrmyopPm7xUA
         PXidHAQuY/SVrufpvb/NudyNIjKIHyX9q+f2vX/W9rRasernZSlLvomkzm0spUaewgvX
         LOwg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKXKf8TPkIYudYZyv7zwtcB6hBhcT3LCM9W7W4D2hmC2+qR2DHjr
	usCU0LhSkyjaXexrhrAuUTw=
X-Google-Smtp-Source: AK7set8S4ueCRRkv/usK8Uotq2NU/SDHvYF0x2LckWFok+tlxJD7ZTVrKWjpxHIJt+MYoJqGrdPPXg==
X-Received: by 2002:a0d:f581:0:b0:506:466c:480c with SMTP id e123-20020a0df581000000b00506466c480cmr1253069ywf.253.1675887037276;
        Wed, 08 Feb 2023 12:10:37 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0d:c684:0:b0:506:3896:7a33 with SMTP id i126-20020a0dc684000000b0050638967a33ls9835990ywd.10.-pod-prod-gmail;
 Wed, 08 Feb 2023 12:10:35 -0800 (PST)
X-Received: by 2002:a81:c54c:0:b0:51d:ee2f:dd2 with SMTP id o12-20020a81c54c000000b0051dee2f0dd2mr5126810ywj.15.1675887035298;
        Wed, 08 Feb 2023 12:10:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675887035; cv=none;
        d=google.com; s=arc-20160816;
        b=QtCmeJBGB1KVcxxMKLsuIQeX0ygSKloYEDv0cYRtQoywDD5ifuOjvALFCfjdTtBoWi
         tYuUrGPm2MDNEati37/R6DeovMspSB4thMKN5pSKS1GZSUp+hZIzcH2HfriT8gzLrrT7
         F946TGingV+xvh9IGwvAcmUcOy1uS70EjNUH9OgrzGSNZ8g4gjuc5Lo2l3ibDJAaodAA
         zrakQyr5wvq0hDlgHHqoJFQ7m6uBb+lPgLoBf+UsmF9vuYHrxJ10SEZ9Dc5RGzf3cCAV
         h+Yf9gSsh/1heJNfxv/Ruq6zrCDsa9z6EoT66gLJjGo45LsEEyeIgLVcNF0lawYTMoN0
         w4zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:dkim-signature;
        bh=vz5siWweFJG5sNsLhvRmsoXtQUUYax30Hb+J5Z6Zmk4=;
        b=n0g6ZKpEZEq+5c24wFYqK3BfZUMhTzFt8qBn22MzbV1ol7mPrs7BP1uyPGkgdrQDwy
         TNZFB7uRGgjjObPpAAocgA1r4lGniOGFj6TlIKoGrd8GV9II8S0lJSC8A9MkhsmIzWbR
         7GsA7t4ZD1n5cLqLOH11XXiVv5vobz5Vcct3V5ONnyW1oeovKyb9DSvzZlWbncknVw0d
         xxZi/nNEHJikDFq18RWZJkHs1bo1UpKRZ3vkd1Sn5RSz8UOZhlMa/1pAnlvYazW+kjnN
         TODgDDZwlfb2aNo2p9K50vAvxnxrsEf6Kg+ibG95lvdqB0hkCRYNFWXL0FNBa2NhKp4+
         eM+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=j5oHDFFy;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com. [2607:f8b0:4864:20::82b])
        by gmr-mx.google.com with ESMTPS id 78-20020a810a51000000b00527bd90db17si1194996ywk.1.2023.02.08.12.10.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 12:10:35 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) client-ip=2607:f8b0:4864:20::82b;
Received: by mail-qt1-x82b.google.com with SMTP id z5so22276896qtn.8
        for <open-iscsi@googlegroups.com>; Wed, 08 Feb 2023 12:10:35 -0800 (PST)
X-Received: by 2002:ac8:5c4c:0:b0:3b8:5aa8:7d7a with SMTP id j12-20020ac85c4c000000b003b85aa87d7amr16098205qtj.68.1675887034479;
        Wed, 08 Feb 2023 12:10:34 -0800 (PST)
Received: from [192.168.172.247] (d-24-233-108-21.nh.cpe.atlanticbb.net. [24.233.108.21])
        by smtp.gmail.com with ESMTPSA id 195-20020a370ccc000000b007259807a512sm1029381qkm.12.2023.02.08.12.10.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 12:10:34 -0800 (PST)
Message-ID: <ff5f785cc888a72737f5f4bc7cfc55cb41a15a5e.camel@gmail.com>
Subject: Re: [RFC 0/9] Make iscsid-kernel communications namespace-aware
From: Don Williams <don.e.williams@gmail.com>
To: open-iscsi@googlegroups.com
Date: Wed, 08 Feb 2023 15:10:33 -0500
In-Reply-To: <9ff09a3d-1a75-436a-bbc3-0f154285cfa3n@googlegroups.com>
References: <cover.1675876731.git.lduncan@suse.com>
	 <9ff09a3d-1a75-436a-bbc3-0f154285cfa3n@googlegroups.com>
Content-Type: multipart/alternative; boundary="=-d1zmjFbJ1WkMJPVTB3Ve"
User-Agent: Evolution 3.44.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=j5oHDFFy;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--=-d1zmjFbJ1WkMJPVTB3Ve
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree that sharing the initiator name and the other config files
would not be recommended.=C2=A0

The initiator name is often used as an access controll method on the
target. =C2=A0 Which could lead to double mounting volumes.=C2=A0

Also one benefit would be better isolating an iSCSI SAN with multiple
customers accessing the SAN via unique containers. =C2=A0 =C2=A0

It should be possible to specify those files and directories as part of
the container config. =C2=A0

Don

On Wed, 2023-02-08 at 11:17 -0800, The Lee-Man wrote:
> I wanted to mention some issues I've discovered as part of testing
> this:
>=20
> * Currently, only some sysfs entries are going to be different per
> namespace
> * This means that the Configuration and Initiator Name are going to
> be
> common to all running daemons (this is /etc/iscsi)
> * This also means that the Node database (and discovery DB, and
> interface DB) are common to all running daemons
> I'm really not sure all running daemons should have the same
> initiator name. If we think of them as separate initiators, then this
> seems wrong.
>=20
> Sharing the Node database may not be a good idea, either. This
> assumes that nodes discovered (and saved) from one namespace can
> actually be reached from other namespaces, but this may not be true.
> Having the Node DB and initiatorname shared means the different
> iscsid instances must cooperate with each other, else their requests
> can collide. Also, I can imagine situations where different daemons
> may want to set different configuration values. Currently they
> cannot.
>=20
> On Wednesday, February 8, 2023 at 9:41:02 AM UTC-8 The Lee-Man wrote:
> > From: Lee Duncan <ldu...@suse.com>
> >=20
> > This is a request for comment on a set of patches that
> > modify the kernel iSCSI initiator communications so that
> > they are namespace-aware. The goal is to allow multiple
> > iSCSI daemon (iscsid) to run at once as long as they
> > are in separate namespaces, and so that iscsid can
> > run in containers.
> >=20
> > Comments and suggestions are more than welcome. I do not
> > expect that this code is production-ready yet, and
> > networking isn't my strongest suit (yet).
> >=20
> > These patches were originally posted in 2015 by Chris
> > Leech. There were some issues at the time about how
> > to handle namespaces going away. I hope to address
> > any issues raised with this patchset and then
> > to merge these changes upstream to address working
> > in working in containers.
> >=20
> > My contribution thus far has been to update these patches
> > to work with the current upstream kernel.
> >=20
> > Chris Leech/Lee Duncan (9):
> > iscsi: create per-net iscsi netlink kernel sockets
> > iscsi: associate endpoints with a host
> > iscsi: sysfs filtering by network namespace
> > iscsi: make all iSCSI netlink multicast namespace aware
> > iscsi: set netns for iscsi_tcp hosts
> > iscsi: check net namespace for all iscsi lookup
> > iscsi: convert flashnode devices from bus to class
> > iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
> > iscsi: filter flashnode sysfs by net namespace
> >=20
> > drivers/infiniband/ulp/iser/iscsi_iser.c | 7 +-
> > drivers/scsi/be2iscsi/be_iscsi.c | 6 +-
> > drivers/scsi/bnx2i/bnx2i_iscsi.c | 6 +-
> > drivers/scsi/cxgbi/libcxgbi.c | 6 +-
> > drivers/scsi/iscsi_tcp.c | 7 +
> > drivers/scsi/qedi/qedi_iscsi.c | 6 +-
> > drivers/scsi/qla4xxx/ql4_os.c | 64 +--
> > drivers/scsi/scsi_transport_iscsi.c | 625 ++++++++++++++++-------
> > include/scsi/scsi_transport_iscsi.h | 63 ++-
> > 9 files changed, 537 insertions(+), 253 deletions(-)
> >=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/ff5f785cc888a72737f5f4bc7cfc55cb41a15a5e.camel%40gmail.com.

--=-d1zmjFbJ1WkMJPVTB3Ve
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>I agree that sharing the initiator name and t=
he other config files would not be recommended.&nbsp;</div><div><br></div><=
div>The initiator name is often used as an access controll method on the ta=
rget. &nbsp; Which could lead to double mounting volumes.&nbsp;</div><div><=
br></div><div>Also one benefit would be better isolating an iSCSI SAN with =
multiple customers accessing the SAN via unique containers. &nbsp; &nbsp;</=
div><div><br></div><div>It should be possible to specify those files and di=
rectories as part of the container config. &nbsp;</div><div><br></div><div>=
Don</div><div><br></div><div>On Wed, 2023-02-08 at 11:17 -0800, The Lee-Man=
 wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-l=
eft:2px #729fcf solid;padding-left:1ex"><div>I wanted to mention some issue=
s I've discovered as part of testing this:</div><div><br></div><div><ul><li=
>Currently, only some sysfs entries are going to be different per namespace=
</li><li>This means that the Configuration and Initiator Name are going to =
be common to all running daemons (this is /etc/iscsi)</li><li>This also mea=
ns that the Node database (and discovery DB, and interface DB) are common t=
o all running daemons</li></ul><div>I'm really not sure all running daemons=
 should have the same initiator name. If we think of them as separate initi=
ators, then this seems wrong.</div><div><br></div><div>Sharing the Node dat=
abase may not be a good idea, either. This assumes that nodes discovered (a=
nd saved) from one namespace can actually be reached from other namespaces,=
 but this may not be true. Having the Node DB and initiatorname shared mean=
s the different iscsid instances must cooperate with each other, else their=
 requests can collide. Also, I can imagine situations where different daemo=
ns may want to set different configuration values. Currently they cannot.<b=
r></div></div><div><br></div><div class=3D"gmail_quote"><div dir=3D"auto" c=
lass=3D"gmail_attr">On Wednesday, February 8, 2023 at 9:41:02 AM UTC-8 The =
Lee-Man wrote:<br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8e=
x; border-left:2px #729fcf solid;padding-left:1ex"><div>From: Lee Duncan &l=
t;<a href=3D"" data-email-masked=3D"" rel=3D"nofollow">ldu...@suse.com</a>&=
gt;<br></div><div><br>This is a request for comment on a set of patches tha=
t<br>modify the kernel iSCSI initiator communications so that<br>they are n=
amespace-aware. The goal is to allow multiple<br>iSCSI daemon (iscsid) to r=
un at once as long as they<br>are in separate namespaces, and so that iscsi=
d can<br>run in containers.<br></div><div><br>Comments and suggestions are =
more than welcome. I do not<br>expect that this code is production-ready ye=
t, and<br>networking isn't my strongest suit (yet).<br></div><div><br>These=
 patches were originally posted in 2015 by Chris<br>Leech. There were some =
issues at the time about how<br>to handle namespaces going away. I hope to =
address<br>any issues raised with this patchset and then<br>to merge these =
changes upstream to address working<br>in working in containers.<br></div><=
div><br>My contribution thus far has been to update these patches<br>to wor=
k with the current upstream kernel.<br></div><div><br>Chris Leech/Lee Dunca=
n (9):<br> iscsi: create per-net iscsi netlink kernel sockets<br> iscsi: as=
sociate endpoints with a host<br> iscsi: sysfs filtering by network namespa=
ce<br> iscsi: make all iSCSI netlink multicast namespace aware<br> iscsi: s=
et netns for iscsi_tcp hosts<br> iscsi: check net namespace for all iscsi l=
ookup<br> iscsi: convert flashnode devices from bus to class<br> iscsi: ren=
ame iscsi_bus_flash_* to iscsi_flash_*<br> iscsi: filter flashnode sysfs by=
 net namespace<br></div><div><br> drivers/infiniband/ulp/iser/iscsi_iser.c =
| 7 +-<br> drivers/scsi/be2iscsi/be_iscsi.c | 6 +-<br> drivers/scsi/bnx2i/b=
nx2i_iscsi.c | 6 +-<br> drivers/scsi/cxgbi/libcxgbi.c | 6 +-<br> drivers/sc=
si/iscsi_tcp.c | 7 +<br> drivers/scsi/qedi/qedi_iscsi.c | 6 +-<br> drivers/=
scsi/qla4xxx/ql4_os.c | 64 +--<br> drivers/scsi/scsi_transport_iscsi.c | 62=
5 ++++++++++++++++-------<br> include/scsi/scsi_transport_iscsi.h | 63 ++-<=
br> 9 files changed, 537 insertions(+), 253 deletions(-)<br></div><div><br>=
</div></blockquote></div></blockquote><div><br></div><div><span></span></di=
v></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ff5f785cc888a72737f5f4bc7cfc55cb41a15a5e.camel%40gmai=
l.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/m=
sgid/open-iscsi/ff5f785cc888a72737f5f4bc7cfc55cb41a15a5e.camel%40gmail.com<=
/a>.<br />

--=-d1zmjFbJ1WkMJPVTB3Ve--
