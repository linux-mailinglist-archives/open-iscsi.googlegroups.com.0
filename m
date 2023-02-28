Return-Path: <open-iscsi+bncBC755V5RXMKBBDPY7CPQMGQES4ALVJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2336A5E54
	for <lists+open-iscsi@lfdr.de>; Tue, 28 Feb 2023 18:38:24 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id c15-20020a37e10f000000b00741a3333881sf6453430qkm.13
        for <lists+open-iscsi@lfdr.de>; Tue, 28 Feb 2023 09:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=U37hqX2pT8gobJZR7/KYurXwk8GswgW2W9recY1Gxi8=;
        b=cwKtEjm/UoTjwBlRJ117kct1SatrW7/scRoh9gQwFzDJ43/HxicdtTy5e/6jTmg4Pd
         llDBNsYc1Xfzpu8ttmHGkFAM3I4q959gnPOCUkeIfS9pbRiClL0q8BypVabqMELv8n1x
         J9tVDKGXkNVAd1kJ8QHm2ZcHybKkDlUczzUKga7K1QX5n0TDLOBoJfqlhzZvROGNy3iW
         wauXt0W+NIL1Qx5BM4v21nvAov9+SDtBMaonzQjKLc0hsSlHYrCOzBN+KDMc3yNmTMju
         mObsdZb4gA0/RF9IGsvfnwRb18FJAqRpscx3s4qpGcYOBXjYgfZGeeUa1/CRjbxNzbBQ
         OU8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U37hqX2pT8gobJZR7/KYurXwk8GswgW2W9recY1Gxi8=;
        b=qo3lwcc6TijA0PG5dQ90x0IsXg+RyClevpA0xX86zQzSqTPb7fi9YUQD/C7PIYo6Ed
         DRH99/VFL5IwwvIhYGsCZwQgUJ1Nn7tqNYhiUGjdUzc4CIAk1QekuBukRqq7LtKwsCo2
         VWu5CYxvRyRoKsdSByG+YNoNyWqVkP3S8aq5KSSjDr4WswMutV5Q1H3mJDj2uBxtJDU0
         LEfThRVPaeoDMWI6LeWfydqIMrww9eZzWb4ebdydOpLHzwE3mYY/kCQOhtknnyOgkaJq
         hJGq0O5VqRKbn+eRA3uD42y4LkvAFFSBN//Q4x+FM0e1V0Ksksw1aCAk5GKQXhCsWmlz
         Pl4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U37hqX2pT8gobJZR7/KYurXwk8GswgW2W9recY1Gxi8=;
        b=CgZbyoe5EwIBx1xAmsoV8/RttCIOmEbgvIqDi9xv42PQS68gJBfyT4iM7HvBU3WphE
         8hDI/J/v8Qr5EB4tAaH7aHpodTqX6HMuadsSDkQUOOQDQLVstoMqN2YKNHDUEpCZ6UGh
         TfgCaOXMnEa5DkR7npO++Ao+IuJFzcWNlKJCT0aRpIxT8Z5/s9mz1+3iVYKZro/GnuTp
         LBSjuadlxxT6n1yAimLX40Cc1sZle+vaHCc9zVmNK6l9gfzbGBd3mRCkM/YVRFy1/b5W
         iSPiltXEDuEPt5geZC/SlcR8yiqeLE98Zhv+aeyUZ1mqIh5ka/gKYti1MFQEj3MMieiA
         Kvtw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVKkvwjauFU5v3SwapTg/yZaaqC4ibtXkOdET5som4t4+30sLPp
	q+k0yn6EiNq81QufrHDth8o=
X-Google-Smtp-Source: AK7set/5zuH4c3yeCDxsu/rDFzta101YmSmsybSNrF/Ji8DGHjKBH/PvPEVrD25IbQeVcP2KMm3Uhg==
X-Received: by 2002:a05:622a:15d4:b0:3bf:b829:46ca with SMTP id d20-20020a05622a15d400b003bfb82946camr1572111qty.1.1677605902820;
        Tue, 28 Feb 2023 09:38:22 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:5781:b0:56b:f6be:9a8b with SMTP id
 lv1-20020a056214578100b0056bf6be9a8bls10581802qvb.2.-pod-prod-gmail; Tue, 28
 Feb 2023 09:38:21 -0800 (PST)
X-Received: by 2002:a05:6214:17d0:b0:56e:fbc3:2b86 with SMTP id cu16-20020a05621417d000b0056efbc32b86mr1012042qvb.6.1677605901144;
        Tue, 28 Feb 2023 09:38:21 -0800 (PST)
Date: Tue, 28 Feb 2023 09:38:20 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <7df2eb67-99f0-412a-82f8-2501d36b45bcn@googlegroups.com>
In-Reply-To: <ff5f785cc888a72737f5f4bc7cfc55cb41a15a5e.camel@gmail.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <9ff09a3d-1a75-436a-bbc3-0f154285cfa3n@googlegroups.com>
 <ff5f785cc888a72737f5f4bc7cfc55cb41a15a5e.camel@gmail.com>
Subject: Re: [RFC 0/9] Make iscsid-kernel communications namespace-aware
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_14362_1172492174.1677605900267"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_14362_1172492174.1677605900267
Content-Type: multipart/alternative; 
	boundary="----=_Part_14363_1049274058.1677605900267"

------=_Part_14363_1049274058.1677605900267
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Don: Agreed.

I have been playing with podman, and I actually have a working prototype!=
=20
Right now, I'm looking how to end sessions started in a container. Just=20
killing the container leaves a dangling session.

On Wednesday, February 8, 2023 at 12:10:37=E2=80=AFPM UTC-8 don.e.w...@gmai=
l.com=20
wrote:

> I agree that sharing the initiator name and the other config files would=
=20
> not be recommended.=20
>
> The initiator name is often used as an access controll method on the=20
> target.   Which could lead to double mounting volumes.=20
>
> Also one benefit would be better isolating an iSCSI SAN with multiple=20
> customers accessing the SAN via unique containers.   =20
>
> It should be possible to specify those files and directories as part of=
=20
> the container config. =20
>
> Don
>
> On Wed, 2023-02-08 at 11:17 -0800, The Lee-Man wrote:
>
> I wanted to mention some issues I've discovered as part of testing this:
>
>
>    - Currently, only some sysfs entries are going to be different per=20
>    namespace
>    - This means that the Configuration and Initiator Name are going to be=
=20
>    common to all running daemons (this is /etc/iscsi)
>    - This also means that the Node database (and discovery DB, and=20
>    interface DB) are common to all running daemons
>
> I'm really not sure all running daemons should have the same initiator=20
> name. If we think of them as separate initiators, then this seems wrong.
>
> Sharing the Node database may not be a good idea, either. This assumes=20
> that nodes discovered (and saved) from one namespace can actually be=20
> reached from other namespaces, but this may not be true. Having the Node =
DB=20
> and initiatorname shared means the different iscsid instances must=20
> cooperate with each other, else their requests can collide. Also, I can=
=20
> imagine situations where different daemons may want to set different=20
> configuration values. Currently they cannot.
>
> On Wednesday, February 8, 2023 at 9:41:02 AM UTC-8 The Lee-Man wrote:
>
> From: Lee Duncan <ldu...@suse.com>
>
> This is a request for comment on a set of patches that
> modify the kernel iSCSI initiator communications so that
> they are namespace-aware. The goal is to allow multiple
> iSCSI daemon (iscsid) to run at once as long as they
> are in separate namespaces, and so that iscsid can
> run in containers.
>
> Comments and suggestions are more than welcome. I do not
> expect that this code is production-ready yet, and
> networking isn't my strongest suit (yet).
>
> These patches were originally posted in 2015 by Chris
> Leech. There were some issues at the time about how
> to handle namespaces going away. I hope to address
> any issues raised with this patchset and then
> to merge these changes upstream to address working
> in working in containers.
>
> My contribution thus far has been to update these patches
> to work with the current upstream kernel.
>
> Chris Leech/Lee Duncan (9):
> iscsi: create per-net iscsi netlink kernel sockets
> iscsi: associate endpoints with a host
> iscsi: sysfs filtering by network namespace
> iscsi: make all iSCSI netlink multicast namespace aware
> iscsi: set netns for iscsi_tcp hosts
> iscsi: check net namespace for all iscsi lookup
> iscsi: convert flashnode devices from bus to class
> iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
> iscsi: filter flashnode sysfs by net namespace
>
> drivers/infiniband/ulp/iser/iscsi_iser.c | 7 +-
> drivers/scsi/be2iscsi/be_iscsi.c | 6 +-
> drivers/scsi/bnx2i/bnx2i_iscsi.c | 6 +-
> drivers/scsi/cxgbi/libcxgbi.c | 6 +-
> drivers/scsi/iscsi_tcp.c | 7 +
> drivers/scsi/qedi/qedi_iscsi.c | 6 +-
> drivers/scsi/qla4xxx/ql4_os.c | 64 +--
> drivers/scsi/scsi_transport_iscsi.c | 625 ++++++++++++++++-------
> include/scsi/scsi_transport_iscsi.h | 63 ++-
> 9 files changed, 537 insertions(+), 253 deletions(-)
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/7df2eb67-99f0-412a-82f8-2501d36b45bcn%40googlegroups.com.

------=_Part_14363_1049274058.1677605900267
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Don: Agreed.</div><div><br /></div><div>I have been playing with podma=
n, and I actually have a working prototype! Right now, I'm looking how to e=
nd sessions started in a container. Just killing the container leaves a dan=
gling session.<br /></div><br /><div class=3D"gmail_quote"><div dir=3D"auto=
" class=3D"gmail_attr">On Wednesday, February 8, 2023 at 12:10:37=E2=80=AFP=
M UTC-8 don.e.w...@gmail.com wrote:<br/></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204=
); padding-left: 1ex;"><div><div>I agree that sharing the initiator name an=
d the other config files would not be recommended.=C2=A0</div><div><br></di=
v><div>The initiator name is often used as an access controll method on the=
 target. =C2=A0 Which could lead to double mounting volumes.=C2=A0</div><di=
v><br></div><div>Also one benefit would be better isolating an iSCSI SAN wi=
th multiple customers accessing the SAN via unique containers. =C2=A0 =C2=
=A0</div><div><br></div><div>It should be possible to specify those files a=
nd directories as part of the container config. =C2=A0</div><div><br></div>=
<div>Don</div></div><div><div><br></div><div>On Wed, 2023-02-08 at 11:17 -0=
800, The Lee-Man wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 =
0 .8ex;border-left:2px #729fcf solid;padding-left:1ex"><div>I wanted to men=
tion some issues I&#39;ve discovered as part of testing this:</div><div><br=
></div><div><ul><li>Currently, only some sysfs entries are going to be diff=
erent per namespace</li><li>This means that the Configuration and Initiator=
 Name are going to be common to all running daemons (this is /etc/iscsi)</l=
i><li>This also means that the Node database (and discovery DB, and interfa=
ce DB) are common to all running daemons</li></ul><div>I&#39;m really not s=
ure all running daemons should have the same initiator name. If we think of=
 them as separate initiators, then this seems wrong.</div><div><br></div><d=
iv>Sharing the Node database may not be a good idea, either. This assumes t=
hat nodes discovered (and saved) from one namespace can actually be reached=
 from other namespaces, but this may not be true. Having the Node DB and in=
itiatorname shared means the different iscsid instances must cooperate with=
 each other, else their requests can collide. Also, I can imagine situation=
s where different daemons may want to set different configuration values. C=
urrently they cannot.<br></div></div><div><br></div><div class=3D"gmail_quo=
te"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday, February 8, 2023 a=
t 9:41:02 AM UTC-8 The Lee-Man wrote:<br></div><blockquote type=3D"cite" st=
yle=3D"margin:0 0 0 .8ex;border-left:2px #729fcf solid;padding-left:1ex"><d=
iv>From: Lee Duncan &lt;<a rel=3D"nofollow">ldu...@suse.com</a>&gt;<br></di=
v><div><br>This is a request for comment on a set of patches that<br>modify=
 the kernel iSCSI initiator communications so that<br>they are namespace-aw=
are. The goal is to allow multiple<br>iSCSI daemon (iscsid) to run at once =
as long as they<br>are in separate namespaces, and so that iscsid can<br>ru=
n in containers.<br></div><div><br>Comments and suggestions are more than w=
elcome. I do not<br>expect that this code is production-ready yet, and<br>n=
etworking isn&#39;t my strongest suit (yet).<br></div><div><br>These patche=
s were originally posted in 2015 by Chris<br>Leech. There were some issues =
at the time about how<br>to handle namespaces going away. I hope to address=
<br>any issues raised with this patchset and then<br>to merge these changes=
 upstream to address working<br>in working in containers.<br></div><div><br=
>My contribution thus far has been to update these patches<br>to work with =
the current upstream kernel.<br></div><div><br>Chris Leech/Lee Duncan (9):<=
br> iscsi: create per-net iscsi netlink kernel sockets<br> iscsi: associate=
 endpoints with a host<br> iscsi: sysfs filtering by network namespace<br> =
iscsi: make all iSCSI netlink multicast namespace aware<br> iscsi: set netn=
s for iscsi_tcp hosts<br> iscsi: check net namespace for all iscsi lookup<b=
r> iscsi: convert flashnode devices from bus to class<br> iscsi: rename isc=
si_bus_flash_* to iscsi_flash_*<br> iscsi: filter flashnode sysfs by net na=
mespace<br></div><div><br> drivers/infiniband/ulp/iser/iscsi_iser.c | 7 +-<=
br> drivers/scsi/be2iscsi/be_iscsi.c | 6 +-<br> drivers/scsi/bnx2i/bnx2i_is=
csi.c | 6 +-<br> drivers/scsi/cxgbi/libcxgbi.c | 6 +-<br> drivers/scsi/iscs=
i_tcp.c | 7 +<br> drivers/scsi/qedi/qedi_iscsi.c | 6 +-<br> drivers/scsi/ql=
a4xxx/ql4_os.c | 64 +--<br> drivers/scsi/scsi_transport_iscsi.c | 625 +++++=
+++++++++++-------<br> include/scsi/scsi_transport_iscsi.h | 63 ++-<br> 9 f=
iles changed, 537 insertions(+), 253 deletions(-)<br></div><div><br></div><=
/blockquote></div></blockquote><div><br></div><div><span></span></div></div=
></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/7df2eb67-99f0-412a-82f8-2501d36b45bcn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/7df2eb67-99f0-412a-82f8-2501d36b45bcn%40googlegroups.com</a>.=
<br />

------=_Part_14363_1049274058.1677605900267--

------=_Part_14362_1172492174.1677605900267--
