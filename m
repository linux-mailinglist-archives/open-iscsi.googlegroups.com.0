Return-Path: <open-iscsi+bncBC755V5RXMKBB6737CPQMGQEWEEXPIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D146A5E64
	for <lists+open-iscsi@lfdr.de>; Tue, 28 Feb 2023 18:46:37 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id li14-20020a0562145e0e00b0057273ac624fsf5573077qvb.1
        for <lists+open-iscsi@lfdr.de>; Tue, 28 Feb 2023 09:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LTnQo5C4Bv9dim6T3IhvDu3V/CCHg9ZgG4XyEv7uXW4=;
        b=gHYspKXidFcOB6oWS9tulK1hoa+7+4fgFUVpPjbEtLNJRl9kvNdYaAb3X+HKPN0Vce
         4eH7RNXZIaVqyFEp7PdT70SsVCq/nv3xDK13x70P0eKbJzeicr74AsZnlkNo03SKNG8M
         cBC5BVekagkZ5bxnTGxe9XucyUy2jWuF264X4kHnPfVUkyF6M9IDGJ3zmlOciT3HoOf/
         PS4fv2F7M984lMEDroBW7Q8GEdK/0kTU8AGzPfbFLeCSeHX0AbnlO5t6NkjmS2uYv1dD
         4VLW3ljyCk0udwX7kuwMewLVr1dfUkc0rFxqKxYDsXOdaetTLeT4stWQ3n+B6tv+bV4L
         asVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LTnQo5C4Bv9dim6T3IhvDu3V/CCHg9ZgG4XyEv7uXW4=;
        b=emorUWenciZhkc4fc4lRDyN4S1yvln+3qO9CpOaFDFy4lA647rSTNkLJog2q94jwUN
         IJZb4wi+zPfnf4SRJ0VI/yWnsVlwm2zTP1k41VKRFfY5T313yXyI3aBG6db5t+Cwi/T2
         tQQAdtidqivFaStQgdDSAyVttlTpmplmDU2A8Edps/jSa8M7cim8Zakf72zGWQSDIhxR
         Oky/fCQ/qHQh0x81EJIqg++1imGRNhSPzDDrztzUkO1M0Fmv2W3pvgPIhsj2SZ1armcT
         kFFQII6KpFNuayEyh3KsiJ3sKCluoo9QjXsb/0kniPOYIkuqCc+F4bcyrs5mgewMw1cq
         BNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LTnQo5C4Bv9dim6T3IhvDu3V/CCHg9ZgG4XyEv7uXW4=;
        b=Ln4A3K0sKtjSV+Njv1MtraOPvqlbVBI4lZZg+7fwsdApRo+3PSO4vdPwJ3cyMS/Ugu
         fbtj9fYbmMh9MZQz2taxDeqyXAXOAaq6f0Cvf85qb6VwSReMVCNdpsk6qHBCgrgM/CJs
         rPGB5uwrNDlGLeIG6rHHxQeHmYWAcdd2BqlLLzuYDzNEcxgN/xSSwDWINomQrNVa0BQn
         WDljo0YymCYt+PXzt4sYIbcA93eukIA2AtuybTM4f5DnNeB4HCe/FtF67mVtPuQUCptN
         l5EyynVsY+8cpqZST5ronXW0q6bu31MMg8I+ZIg38yizkJj3Leiq1P/lYbMGMko9LxNt
         Wskw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVMflDfTf4htHMb9YKAzWrdsEYMrP956DnwlV8JWTbP31QP6IZ1
	J2ICSOehVzn7GIz/JaYJquY=
X-Google-Smtp-Source: AK7set936+bF6IHdpkGoY1z8UxtSuIdAJietk9wzYfhV41KsB2WL+eho6uIRFqyYSUQA98QJm9O7yw==
X-Received: by 2002:a05:6214:5652:b0:56f:a4:d7f8 with SMTP id mh18-20020a056214565200b0056f00a4d7f8mr951579qvb.8.1677606396332;
        Tue, 28 Feb 2023 09:46:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:27cf:b0:71b:3402:f9a1 with SMTP id
 i15-20020a05620a27cf00b0071b3402f9a1ls2988202qkp.0.-pod-prod-gmail; Tue, 28
 Feb 2023 09:46:33 -0800 (PST)
X-Received: by 2002:a37:9a43:0:b0:741:a965:afe5 with SMTP id c64-20020a379a43000000b00741a965afe5mr710169qke.8.1677606393404;
        Tue, 28 Feb 2023 09:46:33 -0800 (PST)
Date: Tue, 28 Feb 2023 09:46:32 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <d55fe062-61a8-4c4a-a511-32d9c084002cn@googlegroups.com>
In-Reply-To: <3b3e946f-0e51-4ab5-9bd9-25a779056816n@googlegroups.com>
References: <3b3e946f-0e51-4ab5-9bd9-25a779056816n@googlegroups.com>
Subject: Re: I have successfully mounted iSCSI targets from Synology NAS in
 Debian 11 Linux server for a construction company at Defu Lane 10,
 Singapore on 10 Feb 2023 Fri
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1964_227521206.1677606392873"
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

------=_Part_1964_227521206.1677606392873
Content-Type: multipart/alternative; 
	boundary="----=_Part_1965_2035400203.1677606392873"

------=_Part_1965_2035400203.1677606392873
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This really isn't useful here IMHO. Did you have a question? Or a=20
suggestion for changes? If not, we don't really need advertising here.

On Friday, February 10, 2023 at 7:33:14=E2=80=AFAM UTC-8 tdte...@gmail.com =
wrote:

> Subject: I have successfully mounted iSCSI targets from Synology NAS in=
=20
> Debian 11 Linux server for a construction company at Defu Lane 10,=20
> Singapore on 10 Feb 2023 Fri
>
> Good day from Singapore,
>
> I have successfully mounted iSCSI targets from Synology NAS in Debian 11=
=20
> Linux server for a construction company at Defu Lane 10, Singapore on 10=
=20
> Feb 2023 Friday.
>
> These are the 5 reference guides I have followed. Please use the followin=
g=20
> guides in sequence.
>
> [1] How to Configure Static IP on Debian 10
>
> Link:=20
> https://www.snel.com/support/how-to-configure-static-ip-on-debian-10/
>
> [2] Debian SourcesList
>
> Link: https://wiki.debian.org/SourcesList
>
> [3] About the /etc/resolv.conf File
>
> Link:=20
> https://docs.oracle.com/en/operating-systems/oracle-linux/6/admin/about-e=
tc-resolve.html
>
> [4] iSCSI: Introduction and Steps to Configure iSCSI Initiator and Target
>
> Link:=20
> https://calsoftinc.com/blogs/2017/03/iscsi-introduction-steps-configure-i=
scsi-initiator-target.html
>
> [5] How Do You Make an iSCSI Target in Synology?
>
> Link: https://linuxhint.com/make-iscsi-target-synology/#b6
>
> Please also note that openssh-server was not installed. To install it, ru=
n
>
> # apt install openssh-server
>
> Edit /etc/ssh/sshd_config
>
> and set
>
> PermitRootLogin yes
>
> # systemctl restart sshd
>
> Regards,
>
> Mr. Turritopsis Dohrnii Teo En Ming
> Targeted Individual in Singapore
> Blogs:
> https://tdtemcerts.blogspot.com
> https://tdtemcerts.wordpress.com
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/d55fe062-61a8-4c4a-a511-32d9c084002cn%40googlegroups.com.

------=_Part_1965_2035400203.1677606392873
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This really isn't useful here IMHO. Did you have a question? Or a suggestio=
n for changes? If not, we don't really need advertising here.<br /><br /><d=
iv class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Friday, =
February 10, 2023 at 7:33:14=E2=80=AFAM UTC-8 tdte...@gmail.com wrote:<br/>=
</div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">Subject: I have s=
uccessfully mounted iSCSI targets from Synology NAS in Debian 11 Linux serv=
er for a construction company at Defu Lane 10, Singapore on 10 Feb 2023 Fri=
<br><br>Good day from Singapore,<br><br>I have successfully mounted iSCSI t=
argets from Synology NAS in Debian 11 Linux server for a construction compa=
ny at Defu Lane 10, Singapore on 10 Feb 2023 Friday.<br><br>These are the 5=
 reference guides I have followed. Please use the following guides in seque=
nce.<br><br>[1] How to Configure Static IP on Debian 10<br><br>Link: <a hre=
f=3D"https://www.snel.com/support/how-to-configure-static-ip-on-debian-10/"=
 target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.goo=
gle.com/url?hl=3Den&amp;q=3Dhttps://www.snel.com/support/how-to-configure-s=
tatic-ip-on-debian-10/&amp;source=3Dgmail&amp;ust=3D1677692697013000&amp;us=
g=3DAOvVaw3-i7g3g0-06qydS81r7QHD">https://www.snel.com/support/how-to-confi=
gure-static-ip-on-debian-10/</a><br><br>[2] Debian SourcesList<br><br>Link:=
 <a href=3D"https://wiki.debian.org/SourcesList" target=3D"_blank" rel=3D"n=
ofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=
=3Dhttps://wiki.debian.org/SourcesList&amp;source=3Dgmail&amp;ust=3D1677692=
697013000&amp;usg=3DAOvVaw2acCk_D9ScPuyoQmLvImYz">https://wiki.debian.org/S=
ourcesList</a><br><br>[3] About the /etc/resolv.conf File<br><br>Link: <a h=
ref=3D"https://docs.oracle.com/en/operating-systems/oracle-linux/6/admin/ab=
out-etc-resolve.html" target=3D"_blank" rel=3D"nofollow" data-saferedirectu=
rl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://docs.oracle.com/en=
/operating-systems/oracle-linux/6/admin/about-etc-resolve.html&amp;source=
=3Dgmail&amp;ust=3D1677692697013000&amp;usg=3DAOvVaw1a58GeJPoSI8OMy9fR-2nn"=
>https://docs.oracle.com/en/operating-systems/oracle-linux/6/admin/about-et=
c-resolve.html</a><br><br>[4] iSCSI: Introduction and Steps to Configure iS=
CSI Initiator and Target<br><br>Link: <a href=3D"https://calsoftinc.com/blo=
gs/2017/03/iscsi-introduction-steps-configure-iscsi-initiator-target.html" =
target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.goog=
le.com/url?hl=3Den&amp;q=3Dhttps://calsoftinc.com/blogs/2017/03/iscsi-intro=
duction-steps-configure-iscsi-initiator-target.html&amp;source=3Dgmail&amp;=
ust=3D1677692697013000&amp;usg=3DAOvVaw2UCAmER-6hb-ve8fmXvkXH">https://cals=
oftinc.com/blogs/2017/03/iscsi-introduction-steps-configure-iscsi-initiator=
-target.html</a><br><br>[5] How Do You Make an iSCSI Target in Synology?<br=
><br>Link: <a href=3D"https://linuxhint.com/make-iscsi-target-synology/#b6"=
 target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.goo=
gle.com/url?hl=3Den&amp;q=3Dhttps://linuxhint.com/make-iscsi-target-synolog=
y/%23b6&amp;source=3Dgmail&amp;ust=3D1677692697013000&amp;usg=3DAOvVaw0iWvH=
6X9cp36YH32eN1VIm">https://linuxhint.com/make-iscsi-target-synology/#b6</a>=
<br><br>Please also note that openssh-server was not installed. To install =
it, run<br><br># apt install openssh-server<br><br>Edit /etc/ssh/sshd_confi=
g<br><br>and set<br><br>PermitRootLogin yes<br><br># systemctl restart sshd=
<br><br>Regards,<br><br>Mr. Turritopsis Dohrnii Teo En Ming<br>Targeted Ind=
ividual in Singapore<br>Blogs:<br><a href=3D"https://tdtemcerts.blogspot.co=
m" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.g=
oogle.com/url?hl=3Den&amp;q=3Dhttps://tdtemcerts.blogspot.com&amp;source=3D=
gmail&amp;ust=3D1677692697013000&amp;usg=3DAOvVaw29wJsMQ7_mtSTp-jZckWGr">ht=
tps://tdtemcerts.blogspot.com</a><br><a href=3D"https://tdtemcerts.wordpres=
s.com" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://w=
ww.google.com/url?hl=3Den&amp;q=3Dhttps://tdtemcerts.wordpress.com&amp;sour=
ce=3Dgmail&amp;ust=3D1677692697013000&amp;usg=3DAOvVaw2QD3rhv8ZhJYU99u-lzVs=
i">https://tdtemcerts.wordpress.com</a><br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/d55fe062-61a8-4c4a-a511-32d9c084002cn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/d55fe062-61a8-4c4a-a511-32d9c084002cn%40googlegroups.com</a>.=
<br />

------=_Part_1965_2035400203.1677606392873--

------=_Part_1964_227521206.1677606392873--
