Return-Path: <open-iscsi+bncBC755V5RXMKBBO5KYSGQMGQE7IGLQCA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5F846DD05
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Dec 2021 21:27:40 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id u14-20020a05622a198e00b002b2f35a6dcfsf5188104qtc.21
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Dec 2021 12:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2b/jYfqk5gBQ16AeG/eZNBR0ja7ymuw0MpX9n2Ne2cY=;
        b=hCsPp4A8L54WEf7c+a6PZzXZXZud3dmY5AL/p7sSJI2YIClW5IKzS972o3pFN0V6Pi
         leBOuXy4kPeHBn7Tkbo/LsRkB6tZM6j/Zv0Dy7P2mDFRVY1tpBHvWQHSFUCvkpt2ec3x
         nxskOZMD5aIgNOeaRFheh5K9h8Up0aahtD4azEmATsbyE/7gSucr/j4ebNZg8ECMftD/
         pXEfY1rkqbygNs8iH8DakxUWikhM4aHlkmfoxayEjitb8c9wv1N1JABXeznj2GYMQhof
         cXQZJGK0kYLJuVH0UrMwYy8U2LrtwAIwEEEtEJAl+EhryHFyXJr70eRnJHf5p5S7Li6n
         yQVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2b/jYfqk5gBQ16AeG/eZNBR0ja7ymuw0MpX9n2Ne2cY=;
        b=PbZaZRNxGpFc6nuIVQdy5XiYcYQW2d41yRh2Mc1Oem//cNadLYymSu4Z+jEYAVTMnS
         lzuSzoWQ90FT7SaW2Qid+Z0jbTftlbFmuoINDncj52PspYtsUwkMA1wcNCaPCNJRx+cR
         QfG6WQMxuZt82UPv+r0Z5moptsVX9d/L8EMaJX8uiIJcU2tnZiw2379Bk8nAxFyhla52
         3OFSpMVW2//0LNIcLOr/7AhmSKWlIrDfA0f/mPdixHyk+BGO81XqR5xUI21qsu0Q5osR
         iE61OdeIAo0CG8W0lq565u+gdzwphe6BZJScLR8l9+ki9kJFS2LcZ/SBEYNQc159Zipd
         QnkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2b/jYfqk5gBQ16AeG/eZNBR0ja7ymuw0MpX9n2Ne2cY=;
        b=wO0+qfvjyLzQoCbRWNyZAcwK6h5Hpr3TiTr/d5udf1myu7uC4QoavamIrdTUbDU0aZ
         nHQv/xP7WcMm4Jz6fjfDgOFb62qoJCCUtZ4IUWmytkHMxeMGOUB4TlhNm6le10PKqtBy
         j3+JMzfVs2vgKu66+JxI1/nDh5fZ9S+U1chhNbBTLiW/Xyvo4gw5/OkTGCxPseDQqHbh
         2OlKYlmbvFrBjlw7zEUvx1xDWuDaWcrmi26aoXSfZetDSdZctBmU47rA0syt4kb+37Nh
         xpWWx58NmDgpj6Q/qu70jl/l8apsnm3MzOE/gfZEDzLjCsrg81XDTDTM1IabdnVh/ikI
         r4YQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532AM4jdCUoe6vYlrfTij1fuRdmBRaTvWweRPG6hUQo0ik3jc6bM
	AOVehBVEwnpMubFeC3JGz4g=
X-Google-Smtp-Source: ABdhPJzhUmf0slhvW1eaC4ucNNQb+9bXlNLF455QT1BwbC3ZNr397mJDWvAN5mK4AC65nVf+NGEtZg==
X-Received: by 2002:a05:620a:1794:: with SMTP id ay20mr9513642qkb.5.1638995259424;
        Wed, 08 Dec 2021 12:27:39 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1aa2:: with SMTP id bl34ls2354617qkb.11.gmail; Wed,
 08 Dec 2021 12:27:39 -0800 (PST)
X-Received: by 2002:a05:620a:244a:: with SMTP id h10mr9278942qkn.173.1638995258837;
        Wed, 08 Dec 2021 12:27:38 -0800 (PST)
Date: Wed, 8 Dec 2021 12:27:38 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <49efbe97-d0ce-474e-9705-ffb690208e26n@googlegroups.com>
In-Reply-To: <1b70c5d5-bb56-4f35-948b-1a2cbde569ban@googlegroups.com>
References: <1b70c5d5-bb56-4f35-948b-1a2cbde569ban@googlegroups.com>
Subject: Re: iSCSI initiator setting max_sectors_kb=4 when target
 optimal_io_size=4096
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3202_1356672041.1638995258178"
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

------=_Part_3202_1356672041.1638995258178
Content-Type: multipart/alternative; 
	boundary="----=_Part_3203_246140133.1638995258178"

------=_Part_3203_246140133.1638995258178
Content-Type: text/plain; charset="UTF-8"

Perhaps someone from RedHat can comment? I suspect this is a kernel change, 
though.

On Sunday, November 21, 2021 at 6:31:39 PM UTC-8 alexi...@gmail.com wrote:

> Hi,
>
> Looking into whether this is a bug, or an expect behavior with kernel 4.18+
>
> RHEL 8.4 on AWS r5.xlarge hardware type, attaching nvme disks, observing 
> the nvme device is configuring optimal_io_size to 4KB
> i.e.
> /sys/devices/pci0000:00/0000:00:1c.0/nvme/nvme4/nvme4n1/queue/optimal_io_size 
> 4096
>
> When attaching this device remotely using Linux-IO, the initiator device 
> is using the target's 'optimal_io_size' to set the max_sectors_kb. 
> i.e.
> /sys/devices/platform/host1/session8/target1:0:0/1:0:0:0/block/sdb/queue/max_sectors_kb 
> 4
>
> This does not seem to be correct behavior. optimal_io_size and 
> max_sectors_kb should not be directly related.  Do not observe this 
> behavior with RHEL7.
>
> target:
>  - RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64
> initiator: 
>  - RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64
>  - iscsi-initiator-utils-iscsiuio-6.2.1.2-1.gita8fcb37.el8.x86_64
>  - iscsi-initiator-utils-6.2.1.2-1.gita8fcb37.el8.x86_64
>
>
> Thanks,
>
> Alexis.
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/49efbe97-d0ce-474e-9705-ffb690208e26n%40googlegroups.com.

------=_Part_3203_246140133.1638995258178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perhaps someone from RedHat can comment? I suspect this is a kernel change,=
 though.<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail=
_attr">On Sunday, November 21, 2021 at 6:31:39 PM UTC-8 alexi...@gmail.com =
wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0=
.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">Hi,<di=
v><br></div><div>Looking into whether this is a bug, or an expect behavior =
with kernel 4.18+</div><div><br></div><div><div>RHEL 8.4 on AWS r5.xlarge h=
ardware type, attaching nvme disks, observing the nvme device is configurin=
g optimal_io_size to 4KB</div><div>i.e.</div><div>/sys/devices/pci0000:00/0=
000:00:1c.0/nvme/nvme4/nvme4n1/queue/optimal_io_size 4096</div><div><br></d=
iv><div>When attaching this device remotely using Linux-IO, the initiator d=
evice is using the target&#39;s &#39;optimal_io_size&#39; to set the max_se=
ctors_kb.=C2=A0</div><div>i.e.</div><div>/sys/devices/platform/host1/sessio=
n8/target1:0:0/1:0:0:0/block/sdb/queue/max_sectors_kb 4</div><div><br></div=
><div>This does not seem to be correct behavior. optimal_io_size and max_se=
ctors_kb should not be directly related.=C2=A0 Do not observe this behavior=
 with RHEL7.<br></div></div><div><br></div><div><div>target:</div><div>=C2=
=A0- RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64</div><div>initiator:=C2=A0</div=
><div>=C2=A0- RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64</div><div>=C2=A0- iscs=
i-initiator-utils-iscsiuio-6.2.1.2-1.gita8fcb37.el8.x86_64</div><div>=C2=A0=
- iscsi-initiator-utils-6.2.1.2-1.gita8fcb37.el8.x86_64</div></div><div><br=
></div><div><br></div><div>Thanks,</div><div><br></div><div>Alexis.</div><d=
iv><br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/49efbe97-d0ce-474e-9705-ffb690208e26n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/49efbe97-d0ce-474e-9705-ffb690208e26n%40googlegroups.com</a>.=
<br />

------=_Part_3203_246140133.1638995258178--

------=_Part_3202_1356672041.1638995258178--
